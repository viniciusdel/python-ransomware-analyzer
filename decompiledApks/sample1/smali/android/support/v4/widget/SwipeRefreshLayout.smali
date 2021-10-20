.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101000e

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 104
    move-object v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 112
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 113
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 119
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 124
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 137
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 168
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1067
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1091
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 289
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 291
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 294
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 295
    move-object v5, v0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 297
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 298
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 299
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v4, v5

    .line 302
    move-object v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    .line 303
    move-object v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    .line 305
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 306
    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 308
    move-object v5, v0

    const/high16 v6, 0x42800000    # 64.0f

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 309
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 310
    move-object v5, v0

    new-instance v6, Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 312
    move-object v5, v0

    new-instance v6, Landroid/support/v4/view/NestedScrollingChildHelper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 313
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 314
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move v0, v1

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move v0, v2

    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1039
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1040
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1041
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1042
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1043
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1044
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1046
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1047
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1048
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 1051
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v3, :cond_0

    .line 1053
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1065
    :goto_0
    return-void

    .line 1055
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1056
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 1057
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1058
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1059
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1060
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1062
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1063
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 8

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/CircleImageView;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, -0x50506

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 333
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 334
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 335
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 337
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method private ensureTarget()V
    .locals 5

    .prologue
    .line 546
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v3, :cond_0

    .line 547
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 548
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 549
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 555
    :cond_0
    return-void

    .line 547
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 7

    .prologue
    .line 933
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 934
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 963
    :goto_0
    return-void

    .line 937
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 938
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 939
    const/4 v3, 0x0

    move-object v2, v3

    .line 940
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v3, :cond_1

    .line 941
    new-instance v3, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    move-object v2, v3

    .line 960
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 961
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 6

    .prologue
    .line 711
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v4

    move v3, v4

    .line 712
    move v4, v3

    if-gez v4, :cond_0

    .line 713
    const/high16 v4, -0x40800000    # -1.0f

    move v0, v4

    .line 715
    :goto_0
    return v0

    :cond_0
    move-object v4, v1

    move v5, v3

    invoke-static {v4, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 3

    .prologue
    .line 882
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 18

    .prologue
    .line 886
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    .line 887
    move v12, v1

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float/2addr v12, v13

    move v2, v12

    .line 889
    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move v3, v12

    .line 890
    move v12, v3

    float-to-double v12, v12

    const-wide v14, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v12, v14

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-float v12, v12

    const/high16 v13, 0x40a00000    # 5.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x40400000    # 3.0f

    div-float/2addr v12, v13

    move v4, v12

    .line 891
    move v12, v1

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v12, v13

    move v5, v12

    .line 892
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v12, :cond_5

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    :goto_0
    move v6, v12

    .line 894
    const/4 v12, 0x0

    move v13, v5

    move v14, v6

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v14, v6

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move v7, v12

    .line 896
    move v12, v7

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v7

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    double-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    move v8, v12

    .line 898
    move v12, v6

    move v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    move v9, v12

    .line 900
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move v13, v6

    move v14, v3

    mul-float/2addr v13, v14

    move v14, v9

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    move v10, v12

    .line 902
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v12}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_0

    .line 903
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 905
    :cond_0
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v12, :cond_1

    .line 906
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 907
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 909
    :cond_1
    move v12, v1

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 910
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v12, :cond_2

    .line 911
    move-object v12, v0

    move v13, v1

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float/2addr v13, v14

    invoke-direct {v12, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 913
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v12

    const/16 v13, 0x4c

    if-le v12, v13, :cond_3

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {v12, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 916
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 918
    :cond_3
    move v12, v4

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    move v11, v12

    .line 919
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v13, 0x0

    const v14, 0x3f4ccccd    # 0.8f

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 920
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/high16 v13, 0x3f800000    # 1.0f

    move v14, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    .line 927
    :cond_4
    :goto_1
    const/high16 v12, -0x41800000    # -0.25f

    const v13, 0x3ecccccd    # 0.4f

    move v14, v4

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v13, v8

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move v11, v12

    .line 928
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v13, v11

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 929
    move-object v12, v0

    move v13, v10

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 930
    return-void

    .line 892
    :cond_5
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto/16 :goto_0

    .line 922
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v12

    const/16 v13, 0xff

    if-ge v12, v13, :cond_4

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {v12, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 924
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_1
.end method

.method private moveToStart(F)V
    .locals 7

    .prologue
    .line 1085
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 1086
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    move v2, v4

    .line 1087
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v5}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1088
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1089
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    move v2, v5

    .line 1133
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    move v3, v5

    .line 1134
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 1137
    move v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1138
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1140
    :cond_0
    return-void

    .line 1137
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setAnimationProgress(F)V
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 411
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 206
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 207
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 6

    .prologue
    .line 416
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 417
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 418
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 419
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 420
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v3, :cond_1

    .line 421
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 5

    .prologue
    .line 1123
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 1124
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->offsetTopAndBottom(I)V

    .line 1125
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v4}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1126
    move v3, v2

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 1127
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1129
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 10

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 453
    const/4 v4, 0x0

    move-object v0, v4

    .line 468
    :goto_0
    return-object v0

    .line 455
    :cond_0
    new-instance v4, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    move-object v3, v4

    .line 463
    move-object v4, v3

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 465
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 466
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v4}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 467
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 5

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 447
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 5

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0x4c

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 443
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 7

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 435
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 436
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 437
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 438
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .prologue
    .line 1100
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1101
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1102
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1106
    :goto_0
    move-object v3, v0

    new-instance v4, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1114
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1115
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1116
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1118
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1119
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    return-void

    .line 1104
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 7

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 382
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 386
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 388
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 394
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 395
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 396
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 398
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 399
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 4

    .prologue
    .line 636
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_5

    .line 637
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_2

    .line 638
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    move-object v1, v2

    .line 639
    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 646
    :goto_1
    return v0

    .line 639
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 643
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 646
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 8

    .prologue
    .line 873
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 878
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 856
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

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
    .line 850
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

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

.method protected getChildDrawingOrder(II)I
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v3, :cond_0

    .line 318
    move v3, v2

    move v0, v3

    .line 327
    :goto_0
    return v0

    .line 319
    :cond_0
    move v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 321
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    move v0, v3

    goto :goto_0

    .line 322
    :cond_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt v3, v4, :cond_2

    .line 324
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0

    .line 327
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 784
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v0, v1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 652
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 654
    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    move v2, v6

    .line 656
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v6, :cond_0

    move v6, v2

    if-nez v6, :cond_0

    .line 657
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 660
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v6, :cond_2

    .line 663
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    .line 707
    :goto_0
    return v0

    .line 666
    :cond_2
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 707
    :cond_3
    :goto_1
    :pswitch_0
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    move v0, v6

    goto :goto_0

    .line 668
    :pswitch_1
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v8}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 669
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 670
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 671
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v6

    move v3, v6

    .line 672
    move v6, v3

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 673
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 675
    :cond_4
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    .line 676
    goto :goto_1

    .line 679
    :pswitch_2
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 680
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 681
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 684
    :cond_5
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v6

    move v4, v6

    .line 685
    move v6, v4

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 686
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 688
    :cond_6
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr v6, v7

    move v5, v6

    .line 689
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_3

    .line 690
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 691
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 692
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v7, 0x4c

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 697
    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 698
    goto/16 :goto_1

    .line 702
    :pswitch_4
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 703
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto/16 :goto_1

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 568
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v16

    move/from16 v7, v16

    .line 569
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v16

    move/from16 v8, v16

    .line 570
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 589
    :goto_0
    return-void

    .line 573
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 574
    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 576
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 577
    goto :goto_0

    .line 579
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v9, v16

    .line 580
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v16

    move/from16 v10, v16

    .line 581
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v16

    move/from16 v11, v16

    .line 582
    move/from16 v16, v7

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v12, v16

    .line 583
    move/from16 v16, v8

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 584
    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v10

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v20, v11

    move/from16 v21, v13

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/view/View;->layout(IIII)V

    .line 585
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v16

    move/from16 v14, v16

    .line 586
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v16

    move/from16 v15, v16

    .line 587
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v16, v0

    move/from16 v17, v7

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v18, v14

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v18, v0

    move/from16 v19, v7

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    move/from16 v20, v14

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v20, v0

    move/from16 v21, v15

    add-int v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    .line 589
    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 10

    .prologue
    .line 593
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 594
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_0

    .line 595
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 597
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v4, :cond_1

    .line 618
    :goto_0
    return-void

    .line 600
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 604
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 606
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v4, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez v4, :cond_2

    .line 607
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 608
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v6}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 610
    :cond_2
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 612
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 613
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-ne v4, v5, :cond_4

    .line 614
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 618
    :cond_3
    goto/16 :goto_0

    .line 612
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 868
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 862
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13

    .prologue
    .line 753
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v3

    if-lez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 754
    move v6, v3

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 755
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v9, v9

    sub-int/2addr v8, v9

    aput v8, v6, v7

    .line 756
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 762
    :goto_0
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 769
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v6, :cond_1

    move v6, v3

    if-lez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    move v6, v3

    move-object v7, v4

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 771
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 775
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    move-object v5, v6

    .line 776
    move-object v6, v0

    move v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 777
    move-object v6, v4

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 778
    move-object v6, v4

    const/4 v7, 0x1

    move-object v11, v6

    move v12, v7

    move-object v6, v11

    move v7, v12

    move-object v8, v11

    move v9, v12

    aget v8, v8, v9

    move-object v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 780
    :cond_2
    return-void

    .line 758
    :cond_3
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v8, v3

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 759
    move-object v6, v4

    const/4 v7, 0x1

    move v8, v3

    aput v8, v6, v7

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 805
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    invoke-virtual/range {v7 .. v12}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    move-result v7

    .line 813
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    move v6, v7

    .line 814
    move v7, v6

    if-gez v7, :cond_0

    .line 815
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    move v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 816
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 818
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 744
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    move-result v4

    .line 745
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 746
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 747
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_0

    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 790
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 793
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 794
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 795
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 798
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 799
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 967
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    move v2, v6

    .line 968
    const/4 v6, -0x1

    move v3, v6

    .line 970
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v6, :cond_0

    move v6, v2

    if-nez v6, :cond_0

    .line 971
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 974
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v6, :cond_2

    .line 976
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    .line 1035
    :goto_0
    return v0

    .line 979
    :cond_2
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 1035
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 981
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 982
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 983
    goto :goto_1

    .line 986
    :pswitch_2
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    move v3, v6

    .line 987
    move v6, v3

    if-gez v6, :cond_4

    .line 988
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 989
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 992
    :cond_4
    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    move v4, v6

    .line 993
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 994
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_3

    .line 995
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 996
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 998
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1004
    :pswitch_3
    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    move v3, v6

    .line 1005
    move v6, v3

    if-gez v6, :cond_6

    .line 1006
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1007
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1009
    :cond_6
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1010
    goto :goto_1

    .line 1014
    :pswitch_4
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1015
    goto :goto_1

    .line 1018
    :pswitch_5
    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    move v3, v6

    .line 1019
    move v6, v3

    if-gez v6, :cond_7

    .line 1020
    sget-object v6, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1021
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1024
    :cond_7
    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    move v4, v6

    .line 1025
    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v5, v6

    .line 1026
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1027
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1028
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1029
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1032
    :pswitch_6
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .prologue
    .line 723
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 729
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public varargs setColorScheme([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 504
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 532
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 533
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 10
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, v5

    .line 515
    move-object v5, v1

    array-length v5, v5

    new-array v5, v5, [I

    move-object v3, v5

    .line 516
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 517
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 519
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 520
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 4

    .prologue
    .line 563
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 564
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 4

    .prologue
    .line 824
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 825
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 346
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 477
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 494
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 495
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 496
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 485
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 486
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 246
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 247
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 248
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 10

    .prologue
    .line 224
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 225
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 226
    move-object v4, v0

    move-object v5, v0

    move v6, v2

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 227
    move-object v4, v0

    move v5, v3

    int-to-float v5, v5

    iput v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 228
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 229
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v4}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 230
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 6

    .prologue
    .line 362
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    move v4, v1

    if-eq v3, v4, :cond_1

    .line 364
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 365
    const/4 v3, 0x0

    move v2, v3

    .line 366
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v3, :cond_0

    .line 367
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 371
    :goto_0
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 373
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 374
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    :goto_1
    return-void

    .line 369
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v3, v3

    move v2, v3

    goto :goto_0

    .line 376
    :cond_1
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 9

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 269
    :goto_0
    return-void

    .line 257
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object v2, v3

    .line 258
    move v3, v1

    if-nez v3, :cond_1

    .line 259
    move-object v3, v0

    move-object v4, v0

    const/high16 v5, 0x42600000    # 56.0f

    move-object v6, v2

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    .line 266
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 268
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    goto :goto_0

    .line 261
    :cond_1
    move-object v3, v0

    move-object v4, v0

    const/high16 v5, 0x42200000    # 40.0f

    move-object v6, v2

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    iput v4, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    .line 834
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 839
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 840
    return-void
.end method
