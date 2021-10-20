.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final SNACKBAR_BEHAVIOR_ENABLED:Z


# instance fields
.field private mFabTranslationY:F

.field private mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method private getFabTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F
    .locals 11

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v8, 0x0

    move v3, v8

    .line 510
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 511
    const/4 v8, 0x0

    move v5, v8

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    :goto_0
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 512
    move-object v8, v4

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 513
    move-object v8, v7

    instance-of v8, v8, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 514
    move v8, v3

    move-object v9, v7

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v9

    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move v3, v8

    .line 511
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    :cond_1
    move v8, v3

    move v0, v8

    return v0
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 10

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-static {v7}, Landroid/support/design/widget/FloatingActionButton;->access$000(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v7

    move-object v3, v7

    .line 549
    move-object v7, v3

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    if-lez v7, :cond_2

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    if-lez v7, :cond_2

    .line 550
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v7

    .line 553
    const/4 v7, 0x0

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    .line 555
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_3

    .line 557
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move v6, v7

    .line 562
    :cond_0
    :goto_0
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getBottom()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_4

    .line 564
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move v5, v7

    .line 570
    :cond_1
    :goto_1
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/design/widget/FloatingActionButton;->offsetTopAndBottom(I)V

    .line 571
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/design/widget/FloatingActionButton;->offsetLeftAndRight(I)V

    .line 573
    :cond_2
    return-void

    .line 558
    :cond_3
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v7, v8, :cond_0

    .line 560
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    move v6, v7

    goto :goto_0

    .line 565
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v7

    move-object v8, v4

    iget v8, v8, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v7, v8, :cond_1

    .line 567
    move-object v7, v3

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    move v5, v7

    goto :goto_1
.end method

.method private updateFabTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 12

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    :goto_0
    return-void

    .line 468
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/FloatingActionButton$Behavior;->getFabTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F

    move-result v6

    move v4, v6

    .line 469
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationY:F

    move v7, v4

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 471
    goto :goto_0

    .line 474
    :cond_1
    move-object v6, v2

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    move v5, v6

    .line 477
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 478
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 481
    :cond_2
    move v6, v5

    move v7, v4

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f2ac083    # 0.667f

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 484
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v6, :cond_3

    .line 485
    move-object v6, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 486
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v7, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 488
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v7, Landroid/support/design/widget/FloatingActionButton$Behavior$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButton$Behavior$1;-><init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 497
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v7, v5

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 498
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 504
    :goto_1
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationY:F

    .line 505
    goto :goto_0

    .line 501
    :cond_4
    move-object v6, v2

    move v7, v4

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 10

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v6

    .line 438
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/AppBarLayout;->getId()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 441
    const/4 v6, 0x0

    move v0, v6

    .line 459
    :goto_0
    return v0

    .line 444
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 445
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 449
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    move-object v5, v6

    .line 450
    move-object v6, v1

    move-object v7, v2

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 452
    move-object v6, v5

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 454
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 459
    :goto_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 457
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_1
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-boolean v4, Landroid/support/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    if-eqz v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/FloatingActionButton;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v4, :cond_1

    .line 425
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V

    .line 431
    :cond_0
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    return v0

    .line 426
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_0

    .line 429
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/FloatingActionButton;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 12

    .prologue
    .line 526
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 527
    const/4 v8, 0x0

    move v5, v8

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    :goto_0
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 528
    move-object v8, v4

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 529
    move-object v8, v7

    instance-of v8, v8, Landroid/support/design/widget/AppBarLayout;

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    check-cast v10, Landroid/support/design/widget/AppBarLayout;

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 535
    :cond_0
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 537
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 538
    const/4 v8, 0x1

    move v0, v8

    return v0

    .line 527
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/FloatingActionButton;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v4

    move v0, v4

    return v0
.end method
