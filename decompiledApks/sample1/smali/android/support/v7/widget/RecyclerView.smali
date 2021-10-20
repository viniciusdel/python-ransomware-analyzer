.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 400
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 241
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 258
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/ViewInfoStore;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    .line 272
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 286
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 290
    move-object v9, v0

    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 291
    move-object v9, v0

    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 313
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 323
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 327
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 352
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 353
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 363
    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 365
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 367
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$State;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 373
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 374
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 375
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 377
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 383
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 386
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 387
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 388
    move-object v9, v0

    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 390
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$2;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 410
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerView$4;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 455
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 456
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 457
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    move v4, v9

    .line 458
    move-object v9, v0

    move v10, v4

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 460
    move-object v9, v1

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    move-object v5, v9

    .line 461
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 462
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 463
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 464
    move-object v9, v0

    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 466
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 467
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 468
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 470
    move-object v9, v0

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_0

    .line 472
    move-object v9, v0

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 475
    :cond_0
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "accessibility"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 477
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 479
    move-object v9, v2

    if-eqz v9, :cond_1

    .line 480
    const/4 v9, 0x0

    move v6, v9

    .line 481
    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    move v12, v3

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v7, v9

    .line 483
    move-object v9, v7

    sget v10, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 484
    move-object v9, v7

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 485
    move-object v9, v0

    move-object v10, v1

    move-object v11, v8

    move-object v12, v2

    move v13, v3

    move v14, v6

    invoke-direct/range {v9 .. v14}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 488
    :cond_1
    move-object v9, v0

    new-instance v10, Landroid/support/v4/view/NestedScrollingChildHelper;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 489
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 490
    return-void

    .line 458
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 464
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2800()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3000(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$302(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    return-void
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3400(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$4302(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4500(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$5000(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$5200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$5300(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method static synthetic access$5400(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5500(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$5700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$6000(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$602(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$6200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    move v0, v1

    return v0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 9

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 1067
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1068
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1069
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1071
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v2

    const/4 v6, -0x1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1077
    :goto_1
    return-void

    .line 1067
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1072
    :cond_1
    move v4, v3

    if-nez v4, :cond_2

    .line 1073
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1075
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8
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
    .line 3036
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3037
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3038
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3040
    :cond_0
    return-void
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 10
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
    .line 3053
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3054
    move-object v5, v1

    move-object v6, v2

    if-eq v5, v6, :cond_0

    .line 3055
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3057
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3058
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3059
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3060
    move-object v5, v2

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3062
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3063
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3065
    :cond_1
    return-void
.end method

.method private animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 8
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
    .line 3044
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3045
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3046
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3047
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3049
    :cond_0
    return-void
.end method

.method private canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 3342
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

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

.method private cancelTouch()V
    .locals 3

    .prologue
    .line 2465
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2466
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2467
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 6

    .prologue
    .line 1895
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 1896
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    if-lez v4, :cond_0

    .line 1897
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v4

    move v3, v4

    .line 1899
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    if-gez v4, :cond_1

    .line 1900
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 1902
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    if-lez v4, :cond_2

    .line 1903
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 1905
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    if-gez v4, :cond_3

    .line 1906
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 1908
    :cond_3
    move v4, v3

    if-eqz v4, :cond_4

    .line 1909
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1911
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 3

    .prologue
    .line 1412
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v1, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1416
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_1

    .line 1417
    const-string v1, "RV FullInvalidate"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1418
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1419
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1420
    goto :goto_0

    .line 1422
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1423
    goto :goto_0

    .line 1428
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1430
    const-string v1, "RV PartialInvalidate"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1431
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1432
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1433
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v1, :cond_3

    .line 1434
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1435
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1441
    :cond_3
    :goto_1
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1442
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1448
    :cond_4
    :goto_2
    goto :goto_0

    .line 1438
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    .line 1443
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1444
    const-string v1, "RV FullInvalidate"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1445
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1446
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_2
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 17

    .prologue
    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v2

    if-eqz v12, :cond_0

    .line 516
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 517
    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 518
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-direct {v12, v13, v14}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 521
    move-object v12, v0

    :try_start_0
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 523
    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v6, v12

    .line 527
    :goto_0
    move-object v12, v6

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-class v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v12

    move-object v7, v12

    .line 530
    const/4 v12, 0x0

    move-object v9, v12

    .line 532
    move-object v12, v7

    :try_start_1
    sget-object v13, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    move-object v8, v12

    .line 534
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v1

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move-object v15, v3

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move v15, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    move v15, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v9, v12

    .line 544
    :goto_1
    move-object v12, v8

    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 545
    move-object v12, v0

    move-object v13, v8

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 564
    :cond_0
    return-void

    .line 525
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v12

    move-object v6, v12

    goto :goto_0

    .line 535
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 537
    move-object v12, v7

    const/4 v13, 0x0

    :try_start_3
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v12

    move-object v8, v12

    .line 542
    goto :goto_1

    .line 538
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 539
    move-object v12, v11

    move-object v13, v10

    :try_start_4
    invoke-virtual {v12, v13}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    .line 540
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Error creating LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 546
    :catch_2
    move-exception v12

    move-object v6, v12

    .line 547
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Unable to find LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 549
    :catch_3
    move-exception v12

    move-object v6, v12

    .line 550
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 552
    :catch_4
    move-exception v12

    move-object v6, v12

    .line 553
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 555
    :catch_5
    move-exception v12

    move-object v6, v12

    .line 556
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Cannot access non-public constructor "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 558
    :catch_6
    move-exception v12

    move-object v6, v12

    .line 559
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-interface {v15}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": Class is not a LayoutManager "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method private defaultOnMeasure(II)V
    .locals 12

    .prologue
    .line 2573
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move v3, v9

    .line 2574
    move v9, v2

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move v4, v9

    .line 2575
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v5, v9

    .line 2576
    move v9, v2

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v6, v9

    .line 2578
    const/4 v9, 0x0

    move v7, v9

    .line 2579
    const/4 v9, 0x0

    move v8, v9

    .line 2581
    move v9, v3

    sparse-switch v9, :sswitch_data_0

    .line 2588
    move-object v9, v0

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v9

    move v7, v9

    .line 2592
    :goto_0
    move v9, v4

    sparse-switch v9, :sswitch_data_1

    .line 2599
    move-object v9, v0

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    move v8, v9

    .line 2603
    :goto_1
    move-object v9, v0

    move v10, v7

    move v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2604
    return-void

    .line 2584
    :sswitch_0
    move v9, v5

    move v7, v9

    .line 2585
    goto :goto_0

    .line 2595
    :sswitch_1
    move v9, v6

    move v8, v9

    .line 2596
    goto :goto_1

    .line 2581
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2592
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private didChildRangeChange(II)Z
    .locals 9

    .prologue
    .line 2994
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v7

    move v3, v7

    .line 2995
    move v7, v3

    if-nez v7, :cond_2

    .line 2996
    move v7, v1

    if-nez v7, :cond_0

    move v7, v2

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move v0, v7

    .line 3008
    :goto_1
    return v0

    .line 2996
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2998
    :cond_2
    const/4 v7, 0x0

    move v4, v7

    :goto_2
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_6

    .line 2999
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v5, v7

    .line 3000
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2998
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3003
    :cond_4
    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    move v6, v7

    .line 3004
    move v7, v6

    move v8, v1

    if-lt v7, v8, :cond_5

    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_3

    .line 3005
    :cond_5
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    .line 3008
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 5689
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v2, v5

    .line 5690
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 5691
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 5692
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5694
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 5695
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 5696
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 5697
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 5696
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 5701
    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 5675
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v2, v5

    .line 5676
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 5677
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 5678
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5680
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 5681
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 5682
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-ltz v5, :cond_1

    .line 5683
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 5682
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 5686
    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 5

    .prologue
    .line 2657
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    move v1, v3

    .line 2658
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2659
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2660
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v2, v3

    .line 2661
    move-object v3, v2

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2662
    move-object v3, v2

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2663
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2665
    :cond_0
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2170
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v2, v6

    .line 2171
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v6, :cond_0

    .line 2172
    move v6, v2

    if-nez v6, :cond_1

    .line 2174
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2187
    :cond_0
    move v6, v2

    if-eqz v6, :cond_5

    .line 2188
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2189
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_5

    .line 2190
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v5, v6

    .line 2191
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2192
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2193
    const/4 v6, 0x1

    move v0, v6

    .line 2197
    :goto_1
    return v0

    .line 2176
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2177
    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 2179
    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2181
    :cond_3
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 2189
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2197
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2153
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v2, v6

    .line 2154
    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move v6, v2

    if-nez v6, :cond_1

    .line 2155
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2158
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2159
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 2160
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v5, v6

    .line 2161
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 2162
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2163
    const/4 v6, 0x1

    move v0, v6

    .line 2166
    :goto_1
    return v0

    .line 2159
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2166
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 11

    .prologue
    .line 2968
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v2, v8

    .line 2969
    move v8, v2

    if-nez v8, :cond_0

    .line 2970
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 2971
    move-object v8, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 2991
    :goto_0
    return-void

    .line 2974
    :cond_0
    const v8, 0x7fffffff

    move v3, v8

    .line 2975
    const/high16 v8, -0x80000000

    move v4, v8

    .line 2976
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_4

    .line 2977
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v6, v8

    .line 2978
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2976
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2981
    :cond_2
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v7, v8

    .line 2982
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 2983
    move v8, v7

    move v3, v8

    .line 2985
    :cond_3
    move v8, v7

    move v9, v4

    if-le v8, v9, :cond_1

    .line 2986
    move v8, v7

    move v4, v8

    goto :goto_2

    .line 2989
    :cond_4
    move-object v8, v1

    const/4 v9, 0x0

    move v10, v3

    aput v10, v8, v9

    .line 2990
    move-object v8, v1

    const/4 v9, 0x1

    move v10, v4

    aput v10, v8, v9

    .line 2991
    goto :goto_0
.end method

.method private getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 8621
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/16 v3, 0x20c

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8624
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    .line 8626
    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 3408
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 3409
    const/4 v1, 0x0

    move-object v0, v1

    .line 3411
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 573
    :goto_0
    return-object v0

    .line 570
    :cond_0
    move-object v3, v2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 573
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 7

    .prologue
    .line 2520
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 2521
    new-instance v2, Landroid/util/TypedValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v2

    .line 2522
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2524
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 2531
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    move v0, v2

    :goto_0
    return v0

    .line 2527
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private hasUpdatedView()Z
    .locals 6

    .prologue
    .line 1454
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1455
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1456
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 1457
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1455
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1461
    const/4 v4, 0x1

    move v0, v4

    .line 1464
    :goto_1
    return v0

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 8

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ChildHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroid/support/v7/widget/RecyclerView$5;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 674
    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 4

    .prologue
    .line 1346
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1350
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v2

    .line 1351
    goto :goto_0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 5

    .prologue
    .line 2637
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2638
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 5

    .prologue
    .line 2641
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2642
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2647
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2648
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2650
    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    .line 2470
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 2471
    move-object v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v4, v5, :cond_0

    .line 2473
    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2474
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2475
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, v4, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2476
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v5, v4, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2478
    :cond_0
    return-void

    .line 2473
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 3

    .prologue
    .line 2739
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_0

    .line 2740
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2741
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2743
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 2

    .prologue
    .line 2746
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

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

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 4

    .prologue
    .line 2756
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_0

    .line 2759
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 2760
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 2761
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 2766
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2767
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 2771
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v1, v2

    .line 2772
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    move v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2400(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    const/4 v3, 0x1

    :goto_2
    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v2

    .line 2776
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_7

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v2

    .line 2779
    return-void

    .line 2769
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    .line 2771
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2772
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 2776
    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 11

    .prologue
    .line 1853
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    const/4 v6, 0x0

    move v5, v6

    .line 1854
    move v6, v2

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 1855
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1856
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v2

    neg-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1857
    const/4 v6, 0x1

    move v5, v6

    .line 1866
    :cond_0
    :goto_0
    move v6, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 1867
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1868
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v4

    neg-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1869
    const/4 v6, 0x1

    move v5, v6

    .line 1878
    :cond_1
    :goto_1
    move v6, v5

    if-nez v6, :cond_2

    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 1879
    :cond_2
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1881
    :cond_3
    return-void

    .line 1859
    :cond_4
    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 1860
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1861
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1862
    const/4 v6, 0x1

    move v5, v6

    goto :goto_0

    .line 1871
    :cond_5
    move v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1872
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1873
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1874
    const/4 v6, 0x1

    move v5, v6

    goto :goto_1
.end method

.method private recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 9

    .prologue
    .line 2958
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 2959
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2961
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    move-wide v3, v5

    .line 2962
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2964
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 2965
    return-void
.end method

.method private releaseGlows()V
    .locals 4

    .prologue
    .line 1884
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 1885
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    move v1, v2

    .line 1886
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 1887
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_2

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 1888
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_3

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 1889
    :cond_3
    move v2, v1

    if-eqz v2, :cond_4

    .line 1890
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1892
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 1086
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1087
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v4

    move v2, v4

    .line 1088
    move v4, v2

    if-eqz v4, :cond_0

    .line 1089
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 1090
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1091
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1096
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1097
    move v4, v2

    move v0, v4

    return v0
.end method

.method private repositionShadowingViews()V
    .locals 14

    .prologue
    .line 3980
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v1, v8

    .line 3981
    const/4 v8, 0x0

    move v2, v8

    :goto_0
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 3982
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 3983
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 3984
    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v8, :cond_1

    .line 3985
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, v8

    .line 3986
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move v6, v8

    .line 3987
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move v7, v8

    .line 3988
    move v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v8, v9, :cond_0

    move v8, v7

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 3990
    :cond_0
    move-object v8, v5

    move v9, v6

    move v10, v7

    move v11, v6

    move-object v12, v5

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    move v12, v7

    move-object v13, v5

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 3981
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3996
    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 2

    .prologue
    .line 2457
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 2458
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2460
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2461
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 2462
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 9

    .prologue
    .line 862
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    .line 863
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 864
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 866
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_4

    .line 868
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v5, :cond_2

    .line 869
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 875
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_3

    .line 876
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 877
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 880
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 882
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 883
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v4, v5

    .line 884
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 885
    move-object v5, v1

    if-eqz v5, :cond_5

    .line 886
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 887
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 889
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_6

    .line 890
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 892
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 893
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v5

    .line 894
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 895
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 6

    .prologue
    .line 3346
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_0

    .line 3358
    :goto_0
    return-void

    .line 3349
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3350
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3351
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 3352
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3353
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3354
    move-object v4, v3

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3351
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3357
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 3358
    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 4

    .prologue
    .line 1171
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v2, v3, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1178
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1179
    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1180
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1182
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1183
    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 2

    .prologue
    .line 1824
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 1825
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 1826
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1828
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 5

    .prologue
    .line 1914
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-gez v3, :cond_4

    .line 1915
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1916
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v1

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    .line 1922
    :cond_0
    :goto_0
    move v3, v2

    if-gez v3, :cond_5

    .line 1923
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1924
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v2

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    .line 1930
    :cond_1
    :goto_1
    move v3, v1

    if-nez v3, :cond_2

    move v3, v2

    if-eqz v3, :cond_3

    .line 1931
    :cond_2
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1933
    :cond_3
    return-void

    .line 1917
    :cond_4
    move v3, v1

    if-lez v3, :cond_0

    .line 1918
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1919
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    goto :goto_0

    .line 1925
    :cond_5
    move v3, v2

    if-lez v3, :cond_1

    .line 1926
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1927
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v3

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2046
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2047
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2049
    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 5

    .prologue
    .line 1229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 1230
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 6

    .prologue
    .line 1200
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 1201
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v4, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1204
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1205
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1207
    :cond_1
    move v3, v2

    if-gez v3, :cond_2

    .line 1208
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1212
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1213
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1214
    return-void

    .line 1210
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 6

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 951
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 953
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 954
    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 4

    .prologue
    .line 2137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2138
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 6

    .prologue
    .line 1297
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1298
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1300
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1301
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2096
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2097
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2098
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2101
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2104
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2115
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2116
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2119
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2121
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 3168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 3222
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3223
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3224
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3225
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3226
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3223
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3229
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3230
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 2

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 974
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 976
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 2

    .prologue
    .line 1318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1319
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1321
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 3

    .prologue
    .line 1571
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 3

    .prologue
    .line 1548
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1591
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 3

    .prologue
    .line 1634
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 1613
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1654
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchLayout()V
    .locals 16

    .prologue
    .line 2807
    move-object/from16 v0, p0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v9, :cond_0

    .line 2808
    const-string v9, "RecyclerView"

    const-string v10, "No adapter attached; skipping layout"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2949
    :goto_0
    return-void

    .line 2811
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v9, :cond_1

    .line 2812
    const-string v9, "RecyclerView"

    const-string v10, "No layout manager attached; skipping layout"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2813
    goto :goto_0

    .line 2815
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v9}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 2816
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2817
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2819
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2820
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2821
    move-object v9, v0

    move-object v10, v0

    const/4 v11, 0x0

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 2822
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v10

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2823
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2824
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {v9, v10}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2826
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2828
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v9

    move v1, v9

    .line 2829
    const/4 v9, 0x0

    move v2, v9

    :goto_2
    move v9, v2

    move v10, v1

    if-ge v9, v10, :cond_5

    .line 2830
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v3, v9

    .line 2831
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2829
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2820
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 2834
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v11, v3

    move-object v12, v3

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v12

    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v9

    move-object v4, v9

    .line 2838
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 2839
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2841
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v9

    move-wide v5, v9

    .line 2849
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-wide v10, v5

    move-object v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_3

    .line 2853
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2860
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 2861
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1900(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    move v1, v9

    .line 2862
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2864
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2865
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v10, v1

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2867
    const/4 v9, 0x0

    move v2, v9

    :goto_4
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v10}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 2868
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 2869
    move-object v9, v3

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v4, v9

    .line 2870
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2867
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2873
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ViewInfoStore;->isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2874
    move-object v9, v4

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v9

    move v5, v9

    .line 2875
    move-object v9, v4

    const/16 v10, 0x2000

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v9

    move v6, v9

    .line 2877
    move v9, v6

    if-nez v9, :cond_8

    .line 2878
    move v9, v5

    const/16 v10, 0x1000

    or-int/lit16 v9, v9, 0x1000

    move v5, v9

    .line 2880
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v11, v4

    move v12, v5

    move-object v13, v4

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v9

    move-object v7, v9

    .line 2882
    move v9, v6

    if-eqz v9, :cond_9

    .line 2883
    move-object v9, v0

    move-object v10, v4

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_5

    .line 2885
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_5

    .line 2890
    :cond_a
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 2891
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 2895
    :goto_6
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2896
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$1802(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v9

    .line 2899
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2900
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2902
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2903
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 2906
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    :goto_7
    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2908
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2910
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v9

    move v1, v9

    .line 2911
    const/4 v9, 0x0

    move v2, v9

    :goto_8
    move v9, v2

    move v10, v1

    if-ge v9, v10, :cond_f

    .line 2912
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v3, v9

    .line 2913
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2911
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2893
    :cond_b
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_6

    .line 2906
    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 2916
    :cond_d
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v9

    move-wide v4, v9

    .line 2917
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v9

    move-object v6, v9

    .line 2919
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v7, v9

    .line 2920
    move-object v9, v7

    if-eqz v9, :cond_e

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-nez v9, :cond_e

    .line 2922
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ViewInfoStore;->popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v9

    move-object v8, v9

    .line 2924
    move-object v9, v0

    move-object v10, v7

    move-object v11, v3

    move-object v12, v8

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 2925
    goto :goto_9

    .line 2926
    :cond_e
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v10, v3

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_9

    .line 2931
    :cond_f
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ViewInfoStore;->process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 2933
    :cond_10
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2934
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2935
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2602(Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v9

    .line 2936
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 2937
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2939
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$2102(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    .line 2940
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2941
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$2402(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z

    move-result v9

    .line 2942
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$2700(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 2943
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$2700(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2945
    :cond_11
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v9}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 2946
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2947
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 2949
    :cond_12
    goto/16 :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 8670
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 6

    .prologue
    .line 8675
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 10

    .prologue
    .line 8665
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 12

    .prologue
    .line 8659
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 6

    .prologue
    .line 3726
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_0

    .line 3727
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 3732
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 3735
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_1

    .line 3736
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3738
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 3739
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_2

    .line 3740
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3739
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3743
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 11

    .prologue
    .line 3690
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v6

    move v3, v6

    .line 3691
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v6

    move v4, v6

    .line 3692
    move-object v6, v0

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3695
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 3699
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v6, :cond_0

    .line 3700
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3702
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 3703
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    :goto_0
    move v6, v5

    if-ltz v6, :cond_1

    .line 3704
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3703
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3707
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1055
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1047
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 3097
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3099
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 3100
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 3101
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3105
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 3106
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3107
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3108
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_8

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    :goto_1
    move v5, v7

    .line 3109
    move-object v7, v1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3110
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    move v9, v5

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3111
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    move v3, v7

    .line 3112
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3114
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3115
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3116
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_2

    .line 3117
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3119
    :cond_2
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    or-int/2addr v7, v8

    move v3, v7

    .line 3120
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3122
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3123
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3124
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    move v5, v7

    .line 3125
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_b

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    :goto_4
    move v6, v7

    .line 3126
    move-object v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3127
    move-object v7, v1

    move v8, v6

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v5

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3128
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    or-int/2addr v7, v8

    move v3, v7

    .line 3129
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3131
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3132
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    move v4, v7

    .line 3133
    move-object v7, v1

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3134
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_d

    .line 3135
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    neg-int v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3139
    :goto_6
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v8, :cond_e

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_7
    or-int/2addr v7, v8

    move v3, v7

    .line 3140
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3146
    :cond_5
    move v7, v3

    if-nez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3148
    const/4 v7, 0x1

    move v3, v7

    .line 3151
    :cond_6
    move v7, v3

    if-eqz v7, :cond_7

    .line 3152
    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3154
    :cond_7
    return-void

    .line 3108
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3111
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 3119
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 3125
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3128
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 3137
    :cond_d
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 3139
    :cond_e
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .prologue
    .line 3588
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method eatRequestLayout()V
    .locals 3

    .prologue
    .line 1659
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    if-nez v1, :cond_0

    .line 1660
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    .line 1661
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_0

    .line 1662
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1665
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 6

    .prologue
    .line 1976
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1979
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1980
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 1981
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1986
    :goto_1
    goto :goto_0

    .line 1984
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureLeftGlow()V
    .locals 6

    .prologue
    .line 1936
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1939
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1940
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 1941
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1946
    :goto_1
    goto :goto_0

    .line 1944
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureRightGlow()V
    .locals 6

    .prologue
    .line 1949
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1952
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1953
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 1954
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1959
    :goto_1
    goto :goto_0

    .line 1957
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureTopGlow()V
    .locals 6

    .prologue
    .line 1962
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 1973
    :goto_0
    return-void

    .line 1965
    :cond_0
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1966
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_1

    .line 1967
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1973
    :goto_1
    goto :goto_0

    .line 1970
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 11

    .prologue
    .line 3571
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    move v3, v8

    .line 3572
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    :goto_0
    move v8, v4

    if-ltz v8, :cond_1

    .line 3573
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 3574
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v8

    move v6, v8

    .line 3575
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v8

    move v7, v8

    .line 3576
    move v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    move v10, v6

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    move v10, v6

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    move v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    move v10, v7

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    move v10, v7

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 3580
    move-object v8, v5

    move-object v0, v8

    .line 3583
    :goto_1
    return-object v0

    .line 3572
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3583
    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    .prologue
    .line 3506
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v5, :cond_0

    .line 3507
    const/4 v5, 0x0

    move-object v0, v5

    .line 3516
    :goto_0
    return-object v0

    .line 3509
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v5

    move v2, v5

    .line 3510
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 3511
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 3512
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_1

    .line 3513
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 3510
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3516
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10

    .prologue
    .line 3551
    move-object v0, p0

    move-wide v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v3, v6

    .line 3552
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 3553
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 3554
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    move-wide v8, v1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 3555
    move-object v6, v5

    move-object v0, v6

    .line 3560
    :goto_1
    return-object v0

    .line 3552
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3560
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .prologue
    .line 3488
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3469
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    .prologue
    .line 3520
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v3, v6

    .line 3521
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 3522
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 3523
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3524
    move v6, v2

    if-eqz v6, :cond_0

    .line 3525
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 3526
    move-object v6, v5

    move-object v0, v6

    .line 3536
    :goto_1
    return-object v0

    .line 3528
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 3529
    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    .line 3521
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3536
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 10

    .prologue
    .line 1774
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v6, :cond_0

    .line 1775
    const-string v6, "RecyclerView"

    const-string v7, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1777
    const/4 v6, 0x0

    move v0, v6

    .line 1808
    :goto_0
    return v0

    .line 1779
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v6, :cond_1

    .line 1780
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1783
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    move v3, v6

    .line 1784
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    move v4, v6

    .line 1786
    move v6, v3

    if-eqz v6, :cond_2

    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_3

    .line 1787
    :cond_2
    const/4 v6, 0x0

    move v1, v6

    .line 1789
    :cond_3
    move v6, v4

    if-eqz v6, :cond_4

    move v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_5

    .line 1790
    :cond_4
    const/4 v6, 0x0

    move v2, v6

    .line 1792
    :cond_5
    move v6, v1

    if-nez v6, :cond_6

    move v6, v2

    if-nez v6, :cond_6

    .line 1794
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1797
    :cond_6
    move-object v6, v0

    move v7, v1

    int-to-float v7, v7

    move v8, v2

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1798
    move v6, v3

    if-nez v6, :cond_7

    move v6, v4

    if-eqz v6, :cond_8

    :cond_7
    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 1799
    move-object v6, v0

    move v7, v1

    int-to-float v7, v7

    move v8, v2

    int-to-float v8, v8

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    move-result v6

    .line 1801
    move v6, v5

    if-eqz v6, :cond_9

    .line 1802
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v6

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 1803
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v6

    .line 1804
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 1805
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1798
    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 1808
    :cond_9
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10

    .prologue
    .line 1996
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 1997
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 1998
    move-object v5, v3

    move-object v0, v5

    .line 2008
    :goto_0
    return-object v0

    .line 2000
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    move-object v4, v5

    .line 2001
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2002
    move-object v5, v3

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_1

    .line 2004
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2005
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v6, v1

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2006
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2008
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .prologue
    .line 3173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 3174
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "RecyclerView has no LayoutManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3176
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 3181
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 3182
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "RecyclerView has no LayoutManager"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3184
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 3189
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_0

    .line 3190
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "RecyclerView has no LayoutManager"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3192
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 904
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object v0, v1

    return-object v0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 931
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 932
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v1

    move v0, v1

    .line 934
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 4

    .prologue
    .line 3031
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    return-wide v0

    :cond_0
    move-object v2, v1

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 3430
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 3431
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 10247
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v3, :cond_0

    .line 10248
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v3

    move v0, v3

    .line 10250
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 5

    .prologue
    .line 3456
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3457
    :cond_0
    const-wide/16 v3, -0x1

    move-wide v0, v3

    .line 3460
    :goto_0
    return-wide v0

    .line 3459
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 3460
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    :goto_1
    move-wide v0, v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 3445
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 3446
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3420
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    .prologue
    .line 3399
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 3400
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 3401
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a direct child of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3404
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object v0, v1

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 2

    .prologue
    .line 2731
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v0, v1

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 12

    .prologue
    .line 3643
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v6

    .line 3644
    move-object v6, v2

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v6, :cond_0

    .line 3645
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v0, v6

    .line 3660
    :goto_0
    return-object v0

    .line 3648
    :cond_0
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v3, v6

    .line 3649
    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3650
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 3651
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 3652
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3653
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v1

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3654
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 3655
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 3656
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 3657
    move-object v6, v3

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 3651
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3659
    :cond_1
    move-object v6, v2

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3660
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 1107
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v0, v1

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 2

    .prologue
    .line 1846
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    move v0, v1

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 2

    .prologue
    .line 1836
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    move v0, v1

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 2

    .prologue
    .line 1119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getScrollState()I
    .locals 2

    .prologue
    .line 1167
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move v0, v1

    return v0
.end method

.method public hasFixedSize()Z
    .locals 2

    .prologue
    .line 773
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    move v0, v1

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 8653
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 2

    .prologue
    .line 3759
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 8

    .prologue
    .line 677
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/AdapterHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Landroid/support/v7/widget/RecyclerView$6;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 755
    return-void
.end method

.method invalidateGlows()V
    .locals 9

    .prologue
    .line 1989
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object v7, v2

    move-object v8, v3

    move-object v2, v8

    move-object v3, v7

    move-object v4, v8

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1990
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 3

    .prologue
    .line 3381
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3390
    :goto_0
    return-void

    .line 3384
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 3385
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v2, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3388
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3389
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3390
    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 2

    .prologue
    .line 2653
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

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

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 3204
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

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

.method public isAttachedToWindow()Z
    .locals 2

    .prologue
    .line 2085
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    move v0, v1

    return v0
.end method

.method public isComputingLayout()Z
    .locals 2

    .prologue
    .line 2687
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 2

    .prologue
    .line 1731
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move v0, v1

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 8638
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 6

    .prologue
    .line 3087
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3088
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 3089
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 3090
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3092
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3093
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .prologue
    .line 3365
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3366
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3367
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3368
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3369
    move-object v4, v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3366
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3372
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3373
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3374
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 6

    .prologue
    .line 3636
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v2, v4

    .line 3637
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 3638
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3637
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3640
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 6

    .prologue
    .line 3598
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move v2, v4

    .line 3599
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 3600
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3599
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3602
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 9

    .prologue
    .line 3267
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v6

    move v3, v6

    .line 3268
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 3269
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    move-object v5, v6

    .line 3270
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 3275
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3276
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v6

    .line 3268
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3279
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3280
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3281
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 12

    .prologue
    .line 3233
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v9

    move v3, v9

    .line 3235
    move v9, v1

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 3236
    move v9, v1

    move v4, v9

    .line 3237
    move v9, v2

    move v5, v9

    .line 3238
    const/4 v9, -0x1

    move v6, v9

    .line 3245
    :goto_0
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_4

    .line 3246
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v8, v9

    .line 3247
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v4

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v5

    if-le v9, v10, :cond_2

    .line 3245
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3240
    :cond_1
    move v9, v2

    move v4, v9

    .line 3241
    move v9, v1

    move v5, v9

    .line 3242
    const/4 v9, 0x1

    move v6, v9

    goto :goto_0

    .line 3254
    :cond_2
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-ne v9, v10, :cond_3

    .line 3255
    move-object v9, v8

    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3260
    :goto_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v9

    goto :goto_2

    .line 3257
    :cond_3
    move-object v9, v8

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3262
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3263
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3264
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 12

    .prologue
    .line 3285
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v4, v8

    .line 3286
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v8

    move v5, v8

    .line 3287
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 3288
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v7, v8

    .line 3289
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3290
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 3296
    move-object v8, v7

    move v9, v2

    neg-int v9, v9

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3297
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    .line 3287
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3298
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 3303
    move-object v8, v7

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v2

    neg-int v10, v10

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3305
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v8

    goto :goto_1

    .line 3309
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3310
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3311
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 2053
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2054
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2055
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2056
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2057
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 2058
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 2060
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2061
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3615
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3627
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 2065
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2066
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_0

    .line 2067
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2069
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2071
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2072
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2073
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 2074
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2076
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 2077
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1}, Landroid/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 2078
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 3158
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3160
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 3161
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 3162
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-object v5, v1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3164
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 2482
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_0

    .line 2483
    const/4 v5, 0x0

    move v0, v5

    .line 2513
    :goto_0
    return v0

    .line 2485
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v5, :cond_1

    .line 2486
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2488
    :cond_1
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v5

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 2489
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 2491
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2494
    move-object v5, v1

    const/16 v6, 0x9

    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v5

    neg-float v5, v5

    move v2, v5

    .line 2499
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2500
    move-object v5, v1

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v5

    move v3, v5

    .line 2506
    :goto_2
    move v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v3

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 2507
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v5

    move v4, v5

    .line 2508
    move-object v5, v0

    move v6, v3

    move v7, v4

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v2

    move v8, v4

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    .line 2513
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2497
    :cond_4
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    .line 2503
    :cond_5
    const/4 v5, 0x0

    move v3, v5

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .prologue
    .line 2202
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v15, :cond_0

    .line 2205
    const/4 v15, 0x0

    move v2, v15

    .line 2301
    :goto_0
    return v2

    .line 2207
    :cond_0
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2208
    move-object v15, v2

    invoke-direct {v15}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2209
    const/4 v15, 0x1

    move v2, v15

    goto :goto_0

    .line 2212
    :cond_1
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v15, :cond_2

    .line 2213
    const/4 v15, 0x0

    move v2, v15

    goto :goto_0

    .line 2216
    :cond_2
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v15

    move v4, v15

    .line 2217
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v15

    move v5, v15

    .line 2219
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_3

    .line 2220
    move-object v15, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2222
    :cond_3
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2224
    move-object v15, v3

    invoke-static {v15}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v15

    move v6, v15

    .line 2225
    move-object v15, v3

    invoke-static {v15}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v15

    move v7, v15

    .line 2227
    move v15, v6

    packed-switch v15, :pswitch_data_0

    .line 2301
    :goto_1
    :pswitch_0
    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/4 v15, 0x1

    :goto_2
    move v2, v15

    goto :goto_0

    .line 2229
    :pswitch_1
    move-object v15, v2

    iget-boolean v15, v15, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v15, :cond_4

    .line 2230
    move-object v15, v2

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2232
    :cond_4
    move-object v15, v2

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2233
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2234
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2236
    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2237
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    move-object v15, v2

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2242
    :cond_5
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v21, v17

    move/from16 v22, v18

    move/from16 v23, v19

    move/from16 v17, v23

    move-object/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    aput v20, v18, v19

    aput v17, v15, v16

    .line 2244
    const/4 v15, 0x0

    move v8, v15

    .line 2245
    move v15, v4

    if-eqz v15, :cond_6

    .line 2246
    move v15, v8

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    move v8, v15

    .line 2248
    :cond_6
    move v15, v5

    if-eqz v15, :cond_7

    .line 2249
    move v15, v8

    const/16 v16, 0x2

    or-int/lit8 v15, v15, 0x2

    move v8, v15

    .line 2251
    :cond_7
    move-object v15, v2

    move/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    move-result v15

    .line 2252
    goto/16 :goto_1

    .line 2255
    :pswitch_2
    move-object v15, v2

    move-object/from16 v16, v3

    move/from16 v17, v7

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2256
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2257
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v7

    invoke-static/range {v17 .. v18}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2258
    goto/16 :goto_1

    .line 2261
    :pswitch_3
    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    move v9, v15

    .line 2262
    move v15, v9

    if-gez v15, :cond_8

    .line 2263
    const-string v15, "RecyclerView"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 2265
    const/4 v15, 0x0

    move v2, v15

    goto/16 :goto_0

    .line 2268
    :cond_8
    move-object v15, v3

    move/from16 v16, v9

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move v10, v15

    .line 2269
    move-object v15, v3

    move/from16 v16, v9

    invoke-static/range {v15 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move v11, v15

    .line 2270
    move-object v15, v2

    iget v15, v15, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 2271
    move v15, v10

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v12, v15

    .line 2272
    move v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v13, v15

    .line 2273
    const/4 v15, 0x0

    move v14, v15

    .line 2274
    move v15, v4

    if-eqz v15, :cond_9

    move v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    .line 2275
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v18, v12

    if-gez v18, :cond_c

    const/16 v18, -0x1

    :goto_3
    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2276
    const/4 v15, 0x1

    move v14, v15

    .line 2278
    :cond_9
    move v15, v5

    if-eqz v15, :cond_a

    move v15, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 2279
    move-object v15, v2

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v18, v13

    if-gez v18, :cond_d

    const/16 v18, -0x1

    :goto_4
    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2280
    const/4 v15, 0x1

    move v14, v15

    .line 2282
    :cond_a
    move v15, v14

    if-eqz v15, :cond_b

    .line 2283
    move-object v15, v2

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2286
    :cond_b
    goto/16 :goto_1

    .line 2275
    :cond_c
    const/16 v18, 0x1

    goto :goto_3

    .line 2279
    :cond_d
    const/16 v18, 0x1

    goto :goto_4

    .line 2289
    :pswitch_4
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2290
    goto/16 :goto_1

    .line 2293
    :pswitch_5
    move-object v15, v2

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    .line 2294
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2295
    goto/16 :goto_1

    .line 2298
    :pswitch_6
    move-object v15, v2

    invoke-direct {v15}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2301
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 3069
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3070
    const-string v6, "RV OnLayout"

    invoke-static {v6}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3071
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3072
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3073
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3074
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3075
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 2536
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v3, :cond_0

    .line 2537
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2538
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2540
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$State;->access$2100(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2545
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v3

    .line 2551
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2552
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2555
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_2

    .line 2556
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 2560
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_3

    .line 2561
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2566
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v3

    .line 2567
    return-void

    .line 2548
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2549
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    move-result v3

    goto :goto_0

    .line 2558
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_1

    .line 2563
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1034
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1035
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1036
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v2, :cond_0

    .line 1037
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1039
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1020
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/RecyclerView$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1021
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v2, :cond_0

    .line 1022
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$SavedState;->access$2000(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1029
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 1023
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    .line 1024
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1026
    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 3721
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .prologue
    .line 3685
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 2608
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2609
    move v5, v1

    move v6, v3

    if-ne v5, v6, :cond_0

    move v5, v2

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 2610
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 2612
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .prologue
    .line 2316
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2317
    :cond_0
    const/16 v16, 0x0

    move/from16 v2, v16

    .line 2453
    :goto_0
    return v2

    .line 2319
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2320
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2321
    const/16 v16, 0x1

    move/from16 v2, v16

    goto :goto_0

    .line 2324
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 2325
    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_0

    .line 2328
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v16

    move/from16 v4, v16

    .line 2329
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v16

    move/from16 v5, v16

    .line 2331
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 2332
    move-object/from16 v16, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2334
    :cond_4
    const/16 v16, 0x0

    move/from16 v6, v16

    .line 2336
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    move-object/from16 v7, v16

    .line 2337
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v16

    move/from16 v8, v16

    .line 2338
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v16

    move/from16 v9, v16

    .line 2340
    move/from16 v16, v8

    if-nez v16, :cond_5

    .line 2341
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v22, v18

    move/from16 v23, v19

    move/from16 v24, v20

    move/from16 v18, v24

    move-object/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    aput v21, v19, v20

    aput v18, v16, v17

    .line 2343
    :cond_5
    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2345
    move/from16 v16, v8

    packed-switch v16, :pswitch_data_0

    .line 2448
    :goto_1
    :pswitch_0
    move/from16 v16, v6

    if-nez v16, :cond_6

    .line 2449
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2451
    :cond_6
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 2453
    const/16 v16, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    .line 2347
    :pswitch_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2348
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2349
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2351
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 2352
    move/from16 v16, v4

    if-eqz v16, :cond_7

    .line 2353
    move/from16 v16, v10

    const/16 v17, 0x1

    or-int/lit8 v16, v16, 0x1

    move/from16 v10, v16

    .line 2355
    :cond_7
    move/from16 v16, v5

    if-eqz v16, :cond_8

    .line 2356
    move/from16 v16, v10

    const/16 v17, 0x2

    or-int/lit8 v16, v16, 0x2

    move/from16 v10, v16

    .line 2358
    :cond_8
    move-object/from16 v16, v2

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    move-result v16

    .line 2359
    goto/16 :goto_1

    .line 2362
    :pswitch_2
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v9

    invoke-static/range {v17 .. v18}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2363
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2364
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v22, v17

    move/from16 v23, v18

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2365
    goto/16 :goto_1

    .line 2368
    :pswitch_3
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    move/from16 v10, v16

    .line 2369
    move/from16 v16, v10

    if-gez v16, :cond_9

    .line 2370
    const-string v16, "RecyclerView"

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 2372
    const/16 v16, 0x0

    move/from16 v2, v16

    goto/16 :goto_0

    .line 2375
    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 2376
    move-object/from16 v16, v3

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    .line 2377
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v16, v0

    move/from16 v17, v11

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 2378
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v16, v0

    move/from16 v17, v12

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 2380
    move-object/from16 v16, v2

    move/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2381
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 2382
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 2383
    move-object/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2385
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v22, v16

    move/from16 v23, v17

    move-object/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 2386
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v22, v16

    move/from16 v23, v17

    move-object/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v22

    move/from16 v19, v23

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 2389
    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 2390
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 2391
    move/from16 v16, v4

    if-eqz v16, :cond_b

    move/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 2392
    move/from16 v16, v13

    if-lez v16, :cond_f

    .line 2393
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 2397
    :goto_2
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 2399
    :cond_b
    move/from16 v16, v5

    if-eqz v16, :cond_c

    move/from16 v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 2400
    move/from16 v16, v14

    if-lez v16, :cond_10

    .line 2401
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v14, v16

    .line 2405
    :goto_3
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 2407
    :cond_c
    move/from16 v16, v15

    if-eqz v16, :cond_d

    .line 2408
    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2412
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2413
    move-object/from16 v16, v2

    move/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2414
    move-object/from16 v16, v2

    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2416
    move-object/from16 v16, v2

    move/from16 v17, v4

    if-eqz v17, :cond_11

    move/from16 v17, v13

    :goto_4
    move/from16 v18, v5

    if-eqz v18, :cond_12

    move/from16 v18, v14

    :goto_5
    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v19}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2420
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2423
    :cond_e
    goto/16 :goto_1

    .line 2395
    :cond_f
    move/from16 v16, v13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v13, v16

    goto/16 :goto_2

    .line 2403
    :cond_10
    move/from16 v16, v14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v14, v16

    goto/16 :goto_3

    .line 2416
    :cond_11
    const/16 v17, 0x0

    goto :goto_4

    :cond_12
    const/16 v18, 0x0

    goto :goto_5

    .line 2426
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2427
    goto/16 :goto_1

    .line 2430
    :pswitch_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2431
    const/16 v16, 0x1

    move/from16 v6, v16

    .line 2432
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    const/16 v17, 0x3e8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2433
    move/from16 v16, v4

    if-eqz v16, :cond_16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    :goto_6
    move/from16 v10, v16

    .line 2435
    move/from16 v16, v5

    if-eqz v16, :cond_17

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v16

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    :goto_7
    move/from16 v11, v16

    .line 2437
    move/from16 v16, v10

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_13

    move/from16 v16, v11

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_14

    :cond_13
    move-object/from16 v16, v2

    move/from16 v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v16

    if-nez v16, :cond_15

    .line 2438
    :cond_14
    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2440
    :cond_15
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2441
    goto/16 :goto_1

    .line 2433
    :cond_16
    const/16 v16, 0x0

    goto :goto_6

    .line 2435
    :cond_17
    const/16 v16, 0x0

    goto :goto_7

    .line 2444
    :pswitch_6
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 9

    .prologue
    .line 3013
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3014
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3015
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3016
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3022
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3023
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3024
    return-void

    .line 3017
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3018
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 5

    .prologue
    .line 1242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    .line 1243
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v3, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1246
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1247
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1250
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1251
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1252
    return-void

    .line 1248
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 4

    .prologue
    .line 962
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 966
    :goto_0
    return-void

    .line 965
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 966
    goto :goto_0
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 4

    .prologue
    .line 2146
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2147
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 2148
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2150
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 4

    .prologue
    .line 1309
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1310
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1312
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 12

    .prologue
    .line 2013
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    if-eqz v6, :cond_1

    .line 2014
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2019
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v3, v6

    .line 2020
    move-object v6, v3

    instance-of v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v6, :cond_0

    .line 2022
    move-object v6, v3

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v6

    .line 2023
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v6, :cond_0

    .line 2024
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object v5, v6

    .line 2025
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 2026
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2027
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 2028
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2032
    :cond_0
    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2033
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2034
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v6

    .line 2036
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2037
    return-void

    .line 2034
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 9

    .prologue
    .line 2041
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 7

    .prologue
    .line 2306
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 2307
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 2308
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move-object v4, v5

    .line 2309
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2307
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2311
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2312
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 3079
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_0

    .line 3080
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3084
    :goto_0
    return-void

    .line 3082
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 4

    .prologue
    .line 1668
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    if-eqz v2, :cond_1

    .line 1670
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 1672
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1674
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    .line 1675
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 1676
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1679
    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 6

    .prologue
    .line 3208
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v4

    move v1, v4

    .line 3209
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3210
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 3215
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3216
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3209
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3219
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 9

    .prologue
    .line 1388
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_0

    .line 1389
    const-string v5, "RecyclerView"

    const-string v6, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1401
    :goto_0
    return-void

    .line 1393
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v5, :cond_1

    .line 1394
    goto :goto_0

    .line 1396
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    move v3, v5

    .line 1397
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    move v4, v5

    .line 1398
    move v5, v3

    if-nez v5, :cond_2

    move v5, v4

    if-eqz v5, :cond_3

    .line 1399
    :cond_2
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_4

    move v6, v1

    :goto_1
    move v7, v4

    if-eqz v7, :cond_5

    move v7, v2

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    .line 1401
    :cond_3
    goto :goto_0

    .line 1399
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 1479
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 1480
    const/4 v8, 0x0

    move v6, v8

    const/4 v8, 0x0

    move v7, v8

    .line 1482
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1483
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_2

    .line 1484
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1485
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1486
    const-string v8, "RV Scroll"

    invoke-static {v8}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1487
    move v8, v1

    if-eqz v8, :cond_0

    .line 1488
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    move v6, v8

    .line 1489
    move v8, v1

    move v9, v6

    sub-int/2addr v8, v9

    move v4, v8

    .line 1491
    :cond_0
    move v8, v2

    if-eqz v8, :cond_1

    .line 1492
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v8

    move v7, v8

    .line 1493
    move v8, v2

    move v9, v7

    sub-int/2addr v8, v9

    move v5, v8

    .line 1495
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1496
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1497
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1498
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1500
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1501
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1504
    :cond_3
    move-object v8, v0

    move v9, v6

    move v10, v7

    move v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual/range {v8 .. v13}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1506
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1507
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1508
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 1509
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1511
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v9, 0x0

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1512
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v9, 0x1

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1519
    :cond_5
    :goto_0
    move v8, v6

    if-nez v8, :cond_6

    move v8, v7

    if-eqz v8, :cond_7

    .line 1520
    :cond_6
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1522
    :cond_7
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1523
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1525
    :cond_8
    move v8, v6

    if-nez v8, :cond_9

    move v8, v7

    if-eqz v8, :cond_c

    :cond_9
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    return v0

    .line 1513
    :cond_a
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    .line 1514
    move-object v8, v3

    if-eqz v8, :cond_b

    .line 1515
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v10, v4

    int-to-float v10, v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move v12, v5

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1517
    :cond_b
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    .line 1525
    :cond_c
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 5

    .prologue
    .line 1382
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-string v3, "RecyclerView"

    const-string v4, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1384
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4

    .prologue
    .line 1332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1335
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1336
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 1337
    const-string v2, "RecyclerView"

    const-string v3, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1339
    goto :goto_0

    .line 1341
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1342
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v2

    .line 1343
    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 2715
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2719
    :goto_0
    return-void

    .line 2718
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2719
    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 4

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 507
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 508
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 6

    .prologue
    .line 846
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 847
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 848
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 849
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 4

    .prologue
    .line 1267
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne v2, v3, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1270
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1271
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1272
    goto :goto_0

    .line 1271
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq v2, v3, :cond_0

    .line 779
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 781
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 782
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 783
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_1

    .line 784
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 786
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 4

    .prologue
    .line 765
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 766
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 4

    .prologue
    .line 2626
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    .line 2627
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2628
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2630
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 2631
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_1

    .line 2632
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2634
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 4

    .prologue
    .line 1157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1158
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 13

    .prologue
    .line 1704
    move-object v0, p0

    move v1, p1

    move v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq v5, v6, :cond_1

    .line 1705
    move-object v5, v0

    const-string v6, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1706
    move v5, v1

    if-nez v5, :cond_2

    .line 1707
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1708
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_0

    .line 1709
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1711
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1722
    :cond_1
    :goto_0
    return-void

    .line 1713
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 1714
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 1716
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1717
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1718
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1719
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 7

    .prologue
    .line 991
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne v2, v3, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 996
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_2

    .line 997
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v2, :cond_1

    .line 998
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1000
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1002
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1003
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1004
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 1005
    move-object v2, v1

    if-eqz v2, :cond_4

    .line 1006
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_3

    .line 1007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already attached to a RecyclerView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1010
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1011
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v2, :cond_4

    .line 1012
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1015
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1016
    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 8633
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 8634
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 1285
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 4

    .prologue
    .line 1131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 1132
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 4

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 919
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 7

    .prologue
    .line 798
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    move-object v2, v3

    .line 799
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 801
    const-string v3, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; using default value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 805
    :pswitch_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 812
    :goto_0
    return-void

    .line 809
    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 4

    .prologue
    .line 1142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    .line 1143
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    .prologue
    .line 2699
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2700
    const/4 v3, 0x0

    move v2, v3

    .line 2701
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2702
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v3

    move v2, v3

    .line 2704
    :cond_0
    move v3, v2

    if-nez v3, :cond_1

    .line 2705
    const/4 v3, 0x0

    move v2, v3

    .line 2707
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    move v5, v2

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2708
    const/4 v3, 0x1

    move v0, v3

    .line 2710
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 6

    .prologue
    .line 1741
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_0

    .line 1742
    const-string v3, "RecyclerView"

    const-string v4, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1758
    :goto_0
    return-void

    .line 1746
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_1

    .line 1747
    goto :goto_0

    .line 1749
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1750
    const/4 v3, 0x0

    move v1, v3

    .line 1752
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1753
    const/4 v3, 0x0

    move v2, v3

    .line 1755
    :cond_3
    move v3, v1

    if-nez v3, :cond_4

    move v3, v2

    if-eqz v3, :cond_5

    .line 1756
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 1758
    :cond_5
    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 6

    .prologue
    .line 1369
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v2, :cond_0

    .line 1378
    :goto_0
    return-void

    .line 1372
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    .line 1373
    const-string v2, "RecyclerView"

    const-string v3, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1375
    goto :goto_0

    .line 1377
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 1378
    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 8643
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 8648
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 8649
    return-void
.end method

.method public stopScroll()V
    .locals 3

    .prologue
    .line 1816
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1817
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1818
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 7

    .prologue
    .line 830
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 831
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 832
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 833
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 834
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 12

    .prologue
    .line 3320
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v9

    move v4, v9

    .line 3321
    move v9, v1

    move v10, v2

    add-int/2addr v9, v10

    move v5, v9

    .line 3323
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 3324
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 3325
    move-object v9, v7

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v9

    move-object v8, v9

    .line 3326
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3323
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3329
    :cond_1
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 3332
    move-object v9, v8

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3333
    move-object v9, v8

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3335
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3338
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3339
    return-void
.end method
