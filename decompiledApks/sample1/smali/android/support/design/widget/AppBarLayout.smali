.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field private static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field private static final PENDING_ACTION_COLLAPSED:I = 0x2

.field private static final PENDING_ACTION_EXPANDED:I = 0x1

.field private static final PENDING_ACTION_NONE:I


# instance fields
.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTargetElevation:F

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 124
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 125
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 131
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 143
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 145
    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 147
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->AppBarLayout:[I

    const/4 v7, 0x0

    sget v8, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 149
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    .line 150
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    move-object v4, v3

    sget v5, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 154
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    move-object v4, v0

    invoke-static {v4}, Landroid/support/design/widget/ViewUtils;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 159
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    .line 161
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 163
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/AppBarLayout$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/AppBarLayout;->setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/AppBarLayout;)V
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$800(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/AppBarLayout;)I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method private getDownNestedPreScrollRange()I
    .locals 12

    .prologue
    .line 353
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 355
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    move v0, v7

    .line 382
    :goto_0
    return v0

    .line 358
    :cond_0
    const/4 v7, 0x0

    move v1, v7

    .line 359
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    :goto_1
    move v7, v2

    if-ltz v7, :cond_4

    .line 360
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 361
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v4, v7

    .line 362
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move v5, v7

    .line 363
    move-object v7, v4

    iget v7, v7, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v6, v7

    .line 365
    move v7, v6

    const/4 v8, 0x5

    and-int/lit8 v7, v7, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 367
    move v7, v1

    move-object v8, v4

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    move-object v9, v4

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    .line 369
    move v7, v6

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    .line 371
    move v7, v1

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    move v1, v7

    .line 359
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 374
    :cond_2
    move v7, v1

    move v8, v5

    add-int/2addr v7, v8

    move v1, v7

    goto :goto_2

    .line 376
    :cond_3
    move v7, v1

    if-lez v7, :cond_1

    .line 382
    :cond_4
    move-object v7, v0

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    move v0, v7

    goto :goto_0
.end method

.method private getDownNestedScrollRange()I
    .locals 13

    .prologue
    .line 389
    move-object v0, p0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 391
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    move v0, v8

    .line 420
    :goto_0
    return v0

    .line 394
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    .line 395
    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    move v3, v8

    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 396
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 397
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v8

    .line 398
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v8

    .line 399
    move v8, v6

    move-object v9, v5

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    move-object v10, v5

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v6, v8

    .line 401
    move-object v8, v5

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v7, v8

    .line 403
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 405
    move v8, v1

    move v9, v6

    add-int/2addr v8, v9

    move v1, v8

    .line 407
    move v8, v7

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 411
    move v8, v1

    move-object v9, v4

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v1, v8

    .line 420
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput v10, v9, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    move v0, v8

    goto :goto_0

    .line 395
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPendingAction()I
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    move v0, v1

    return v0
.end method

.method private getTopInset()I
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUpNestedPreScrollRange()I
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    move v0, v1

    return v0
.end method

.method private hasChildWithInterpolator()Z
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    move v0, v1

    return v0
.end method

.method private hasScrollableChildren()Z
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

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

.method private invalidateScrollRanges()V
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 225
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 226
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    .line 227
    return-void
.end method

.method private resetPendingAction()V
    .locals 3

    .prologue
    .line 467
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 468
    return-void
.end method

.method private setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 7

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 477
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 480
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 481
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 482
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v5

    move-object v1, v5

    .line 483
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    :cond_0
    return-void

    .line 480
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 185
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move v0, v2

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 7

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 290
    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v0, v2

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 292
    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 294
    :cond_1
    new-instance v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 7

    .prologue
    .line 424
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v4

    :goto_0
    move v1, v4

    .line 425
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    move v2, v4

    .line 426
    move v4, v2

    if-eqz v4, :cond_1

    .line 428
    move v4, v2

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    .line 433
    :goto_1
    return v0

    .line 424
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 432
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v4

    .line 433
    move v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v5, v1

    add-int/2addr v4, v5

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getTargetElevation()F
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    move v0, v1

    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 14

    .prologue
    .line 307
    move-object v0, p0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 308
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    move v0, v8

    .line 335
    :goto_0
    return v0

    .line 311
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    .line 312
    const/4 v8, 0x0

    move v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    move v3, v8

    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 313
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 314
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v8

    .line 315
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v8

    .line 316
    move-object v8, v5

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    move v7, v8

    .line 318
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 320
    move v8, v1

    move v9, v6

    move-object v10, v5

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v1, v8

    .line 322
    move v8, v7

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 326
    move v8, v1

    move-object v9, v4

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    move v1, v8

    .line 335
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v1

    move-object v11, v0

    invoke-direct {v11}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    move v0, v8

    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    invoke-super/range {v11 .. v16}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 207
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 209
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 210
    const/4 v11, 0x0

    move v6, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v11

    move v7, v11

    :goto_0
    move v11, v6

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 211
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 212
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v9, v11

    .line 213
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v11

    move-object v10, v11

    .line 215
    move-object v11, v10

    if-eqz v11, :cond_1

    .line 216
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 220
    :cond_0
    return-void

    .line 210
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 201
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 202
    return-void
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 194
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 196
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 5

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 252
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v2

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    :goto_1
    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 269
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 270
    return-void

    .line 267
    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout;->mTargetElevation:F

    .line 452
    return-void
.end method
