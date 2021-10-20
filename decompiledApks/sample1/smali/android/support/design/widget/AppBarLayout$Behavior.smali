.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATE_OFFSET_DIPS_PER_SECOND:I = 0x12c

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 675
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 682
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 685
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 675
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 686
    return-void
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .locals 13

    .prologue
    .line 808
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v6

    move v4, v6

    .line 809
    move v6, v4

    move v7, v3

    if-ne v6, v7, :cond_1

    .line 810
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 811
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v6, :cond_2

    .line 817
    move-object v6, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 818
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v7, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 819
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v7, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 831
    :goto_1
    move v6, v4

    move v7, v3

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    move v5, v6

    .line 833
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v7, v5

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 835
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v7, v4

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 836
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 837
    goto :goto_0

    .line 827
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v6}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_1
.end method

.method private dispatchOffsetUpdates(Landroid/support/design/widget/AppBarLayout;)V
    .locals 9

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-static {v6}, Landroid/support/design/widget/AppBarLayout;->access$800(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 990
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 991
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    move-object v5, v6

    .line 992
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 993
    move-object v6, v5

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    .line 990
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 996
    :cond_1
    return-void
.end method

.method private getChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 8

    .prologue
    .line 840
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 841
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 842
    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    move v7, v2

    neg-int v7, v7

    if-gt v6, v7, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    move v7, v2

    neg-int v7, v7

    if-lt v6, v7, :cond_0

    .line 843
    move-object v6, v5

    move-object v0, v6

    .line 846
    :goto_1
    return-object v0

    .line 840
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 18

    .prologue
    .line 999
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move v4, v14

    .line 1001
    const/4 v14, 0x0

    move v5, v14

    move-object v14, v2

    invoke-virtual {v14}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v14

    move v6, v14

    :goto_0
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_2

    .line 1002
    move-object v14, v2

    move v15, v5

    invoke-virtual {v14, v15}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object v7, v14

    .line 1003
    move-object v14, v7

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v8, v14

    .line 1004
    move-object v14, v8

    invoke-virtual {v14}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v14

    move-object v9, v14

    .line 1006
    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v14, v15, :cond_3

    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v14, v15, :cond_3

    .line 1007
    move-object v14, v9

    if-eqz v14, :cond_2

    .line 1008
    const/4 v14, 0x0

    move v10, v14

    .line 1009
    move-object v14, v8

    invoke-virtual {v14}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v14

    move v11, v14

    .line 1010
    move v14, v11

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    .line 1012
    move v14, v10

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v10, v14

    .line 1015
    move v14, v11

    const/4 v15, 0x2

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_0

    .line 1018
    move v14, v10

    move-object v15, v7

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 1022
    :cond_0
    move-object v14, v7

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1023
    move v14, v10

    move-object v15, v2

    invoke-static {v15}, Landroid/support/design/widget/AppBarLayout;->access$900(Landroid/support/design/widget/AppBarLayout;)I

    move-result v15

    sub-int/2addr v14, v15

    move v10, v14

    .line 1026
    :cond_1
    move v14, v10

    if-lez v14, :cond_2

    .line 1027
    move v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    move v12, v14

    .line 1028
    move v14, v10

    int-to-float v14, v14

    move-object v15, v9

    move/from16 v16, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v13, v14

    .line 1032
    move v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->signum(I)I

    move-result v14

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v13

    add-int v15, v15, v16

    mul-int/2addr v14, v15

    move v1, v14

    .line 1042
    :goto_1
    return v1

    :cond_2
    move v14, v3

    move v1, v14

    goto :goto_1

    .line 1001
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 15

    .prologue
    .line 850
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v3, v9

    .line 851
    move-object v9, v0

    move-object v10, v2

    move v11, v3

    invoke-direct {v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v9

    move-object v4, v9

    .line 852
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 853
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v5, v9

    .line 854
    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v9

    const/16 v10, 0x11

    and-int/lit8 v9, v9, 0x11

    const/16 v10, 0x11

    if-ne v9, v10, :cond_1

    .line 856
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    neg-int v9, v9

    move v6, v9

    .line 857
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    neg-int v9, v9

    move v7, v9

    .line 860
    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v9

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 862
    move v9, v7

    move-object v10, v4

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    move v7, v9

    .line 865
    :cond_0
    move v9, v3

    move v10, v7

    move v11, v6

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_2

    move v9, v7

    :goto_0
    move v8, v9

    .line 867
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    move-object v13, v2

    invoke-virtual {v13}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v13

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 871
    :cond_1
    return-void

    .line 865
    :cond_2
    move v9, v6

    goto :goto_0
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 5

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v3, :cond_0

    .line 920
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v3

    move v0, v3

    .line 931
    :goto_0
    return v0

    .line 924
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 926
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 927
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 931
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .locals 3

    .prologue
    .line 937
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    neg-int v2, v2

    move v0, v2

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .locals 3

    .prologue
    .line 942
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    move v0, v2

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 3

    .prologue
    .line 1047
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 12

    .prologue
    .line 876
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-super {v8, v9, v10, v11}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v8

    move v4, v8

    .line 878
    move-object v8, v2

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$500(Landroid/support/design/widget/AppBarLayout;)I

    move-result v8

    move v5, v8

    .line 879
    move v8, v5

    if-eqz v8, :cond_5

    .line 880
    move v8, v5

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v6, v8

    .line 881
    move v8, v5

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    .line 882
    move-object v8, v2

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v8

    neg-int v8, v8

    move v7, v8

    .line 883
    move v8, v6

    if-eqz v8, :cond_2

    .line 884
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 907
    :cond_0
    :goto_1
    move-object v8, v2

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$600(Landroid/support/design/widget/AppBarLayout;)V

    .line 908
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 911
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->dispatchOffsetUpdates(Landroid/support/design/widget/AppBarLayout;)V

    .line 913
    move v8, v4

    move v0, v8

    return v0

    .line 880
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 886
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    goto :goto_1

    .line 888
    :cond_3
    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 889
    move v8, v6

    if-eqz v8, :cond_4

    .line 890
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    .line 892
    :cond_4
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v8

    goto :goto_1

    .line 895
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v8, :cond_0

    .line 896
    move-object v8, v2

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 897
    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    neg-int v8, v8

    move v7, v8

    .line 898
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v8, :cond_6

    .line 899
    move v8, v7

    move-object v9, v6

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    .line 903
    :goto_2
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v8

    goto :goto_1

    .line 901
    :cond_6
    move v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    move v7, v8

    goto :goto_2
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 15

    .prologue
    .line 762
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v9, 0x0

    move v7, v9

    .line 764
    move v9, v6

    if-nez v9, :cond_1

    .line 766
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v2

    invoke-virtual {v12}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v12

    neg-int v12, v12

    const/4 v13, 0x0

    move v14, v5

    neg-float v14, v14

    invoke-virtual/range {v9 .. v14}, Landroid/support/design/widget/AppBarLayout$Behavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v9

    move v7, v9

    .line 793
    :cond_0
    :goto_0
    move-object v9, v0

    move v10, v7

    iput-boolean v10, v9, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasFlung:Z

    .line 794
    move v9, v7

    move v0, v9

    return v0

    .line 771
    :cond_1
    move v9, v5

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 773
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    move-object v10, v2

    invoke-static {v10}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)I

    move-result v10

    add-int/2addr v9, v10

    move v8, v9

    .line 775
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v10, v8

    if-ge v9, v10, :cond_2

    .line 778
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    invoke-direct {v9, v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 779
    const/4 v9, 0x1

    move v7, v9

    .line 781
    :cond_2
    goto :goto_0

    .line 783
    :cond_3
    move-object v9, v2

    invoke-static {v9}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v9

    neg-int v9, v9

    move v8, v9

    .line 784
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v9

    move v10, v8

    if-le v9, v10, :cond_0

    .line 787
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    invoke-direct {v9, v10, v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 788
    const/4 v9, 0x1

    move v7, v9

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 14

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Landroid/support/design/widget/AppBarLayout;

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 17

    .prologue
    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v9, v5

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v9, :cond_0

    .line 713
    move v9, v5

    if-gez v9, :cond_1

    .line 715
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v9

    neg-int v9, v9

    move v7, v9

    .line 716
    move v9, v7

    move-object v10, v2

    invoke-static {v10}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)I

    move-result v10

    add-int/2addr v9, v10

    move v8, v9

    .line 722
    :goto_0
    move-object v9, v6

    const/4 v10, 0x1

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v5

    move v15, v7

    move/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v11

    aput v11, v9, v10

    .line 724
    :cond_0
    return-void

    .line 719
    :cond_1
    move-object v9, v2

    invoke-static {v9}, Landroid/support/design/widget/AppBarLayout;->access$300(Landroid/support/design/widget/AppBarLayout;)I

    move-result v9

    neg-int v9, v9

    move v7, v9

    .line 720
    const/4 v9, 0x0

    move v8, v9

    goto :goto_0
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 14

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    check-cast v9, Landroid/support/design/widget/AppBarLayout;

    move-object v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v7

    if-gez v8, :cond_0

    .line 733
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v7

    move-object v12, v2

    invoke-static {v12}, Landroid/support/design/widget/AppBarLayout;->access$400(Landroid/support/design/widget/AppBarLayout;)I

    move-result v12

    neg-int v12, v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v8

    .line 736
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 16

    .prologue
    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    check-cast v10, Landroid/support/design/widget/AppBarLayout;

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 9

    .prologue
    .line 1077
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v3

    instance-of v5, v5, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v5, :cond_0

    .line 1078
    move-object v5, v3

    check-cast v5, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    move-object v4, v5

    .line 1079
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v8

    invoke-super {v5, v6, v7, v8}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1080
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1081
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1082
    move-object v5, v0

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    iput-boolean v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1085
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 8

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 1052
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-super {v10, v11, v12}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v10

    move-object v3, v10

    .line 1053
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v10

    move v4, v10

    .line 1056
    const/4 v10, 0x0

    move v5, v10

    move-object v10, v2

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v10

    move v6, v10

    :goto_0
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 1057
    move-object v10, v2

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 1058
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    move v8, v10

    .line 1060
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    if-gtz v10, :cond_1

    move v10, v8

    if-ltz v10, :cond_1

    .line 1061
    new-instance v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v3

    invoke-direct {v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v9, v10

    .line 1062
    move-object v10, v9

    move v11, v5

    iput v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1063
    move-object v10, v9

    move v11, v8

    move-object v12, v7

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    .line 1065
    move-object v10, v9

    move v11, v8

    int-to-float v11, v11

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v10, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    .line 1066
    move-object v10, v9

    move-object v0, v10

    .line 1071
    :goto_2
    return-object v0

    .line 1063
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 1056
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1071
    :cond_2
    move-object v10, v3

    move-object v0, v10

    goto :goto_2
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 9

    .prologue
    .line 693
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v5

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-static {v7}, Landroid/support/design/widget/AppBarLayout;->access$100(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v6, v7

    .line 697
    move v7, v6

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v7, :cond_0

    .line 699
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/AppBarLayout$Behavior;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v7}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 703
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 705
    move v7, v6

    move v0, v7

    return v0

    .line 693
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 12

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Landroid/support/design/widget/AppBarLayout;

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasFlung:Z

    if-nez v4, :cond_0

    .line 748
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 752
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 753
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasFlung:Z

    .line 755
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 756
    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/AppBarLayout;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    .line 804
    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 14

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v11

    move v6, v11

    .line 949
    const/4 v11, 0x0

    move v7, v11

    .line 951
    move v11, v4

    if-eqz v11, :cond_1

    move v11, v6

    move v12, v4

    if-lt v11, v12, :cond_1

    move v11, v6

    move v12, v5

    if-gt v11, v12, :cond_1

    .line 955
    move v11, v3

    move v12, v4

    move v13, v5

    invoke-static {v11, v12, v13}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v11

    move v3, v11

    .line 956
    move-object v11, v2

    move-object v8, v11

    .line 957
    move v11, v6

    move v12, v3

    if-eq v11, v12, :cond_1

    .line 958
    move-object v11, v8

    invoke-static {v11}, Landroid/support/design/widget/AppBarLayout;->access$700(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v0

    move-object v12, v8

    move v13, v3

    invoke-direct {v11, v12, v13}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v11

    :goto_0
    move v9, v11

    .line 962
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v11

    move v10, v11

    .line 965
    move v11, v6

    move v12, v3

    sub-int/2addr v11, v12

    move v7, v11

    .line 967
    move-object v11, v0

    move v12, v3

    move v13, v9

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 969
    move v11, v10

    if-nez v11, :cond_0

    move-object v11, v8

    invoke-static {v11}, Landroid/support/design/widget/AppBarLayout;->access$700(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 974
    move-object v11, v1

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 978
    :cond_0
    move-object v11, v0

    move-object v12, v8

    invoke-direct {v11, v12}, Landroid/support/design/widget/AppBarLayout$Behavior;->dispatchOffsetUpdates(Landroid/support/design/widget/AppBarLayout;)V

    .line 982
    :cond_1
    move v11, v7

    move v0, v11

    return v0

    .line 958
    :cond_2
    move v11, v3

    goto :goto_0
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 12

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Landroid/support/design/widget/AppBarLayout;

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v6

    move v0, v6

    return v0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 648
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 648
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
