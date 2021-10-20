.class Landroid/support/design/widget/TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 1448
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1449
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1440
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1443
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1444
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1450
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1451
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1452
    return-void
.end method

.method static synthetic access$1900(Landroid/support/design/widget/TabLayout$SlidingTabStrip;II)V
    .locals 6

    .prologue
    .line 1436
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$2002(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I
    .locals 7

    .prologue
    .line 1436
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    move v0, v2

    return v0
.end method

.method static synthetic access$2102(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F
    .locals 7

    .prologue
    .line 1436
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    move v0, v2

    return v0
.end method

.method private setIndicatorPosition(II)V
    .locals 5

    .prologue
    .line 1586
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq v3, v4, :cond_1

    .line 1588
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1589
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1590
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1592
    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 9

    .prologue
    .line 1563
    move-object v0, p0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 1566
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    .line 1567
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move v2, v5

    .line 1568
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move v3, v5

    .line 1570
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 1572
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 1573
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v7

    move v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v2, v5

    .line 1575
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v7

    move v7, v3

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 1582
    :cond_0
    :goto_0
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1583
    return-void

    .line 1579
    :cond_1
    const/4 v5, -0x1

    move v8, v5

    move v5, v8

    move v6, v8

    move v3, v6

    move v2, v5

    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 19

    .prologue
    .line 1595
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v0

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    .line 1598
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v4, v10

    .line 1599
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v5, v10

    .line 1600
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    move v6, v10

    .line 1604
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_3

    .line 1606
    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    move v7, v10

    .line 1607
    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v8, v10

    .line 1628
    :goto_1
    move v10, v7

    move v11, v5

    if-ne v10, v11, :cond_0

    move v10, v8

    move v11, v6

    if-eq v10, v11, :cond_1

    .line 1629
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/support/design/widget/TabLayout;->access$1802(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/ValueAnimatorCompat;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v10

    move-object v9, v10

    .line 1630
    move-object v10, v9

    sget-object v11, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1631
    move-object v10, v9

    move v11, v2

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 1632
    move-object v10, v9

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v12}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 1633
    move-object v10, v9

    new-instance v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move v14, v7

    move v15, v5

    move/from16 v16, v8

    move/from16 v17, v6

    invoke-direct/range {v12 .. v17}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1642
    move-object v10, v9

    new-instance v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move v14, v1

    invoke-direct {v12, v13, v14}, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ValueAnimatorCompat;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 1655
    move-object v10, v9

    invoke-virtual {v10}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 1656
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 1658
    :cond_1
    return-void

    .line 1595
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 1610
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v11, 0x18

    invoke-static {v10, v11}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;I)I

    move-result v10

    move v9, v10

    .line 1611
    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge v10, v11, :cond_5

    .line 1613
    move v10, v3

    if-eqz v10, :cond_4

    .line 1614
    move v10, v5

    move v11, v9

    sub-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto :goto_1

    .line 1616
    :cond_4
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto/16 :goto_1

    .line 1620
    :cond_5
    move v10, v3

    if-eqz v10, :cond_6

    .line 1621
    move v10, v6

    move v11, v9

    add-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto/16 :goto_1

    .line 1623
    :cond_6
    move v10, v5

    move v11, v9

    sub-int/2addr v10, v11

    move/from16 v18, v10

    move/from16 v10, v18

    move/from16 v11, v18

    move v8, v11

    move v7, v10

    goto/16 :goto_1
.end method

.method childrenNeedLayout()Z
    .locals 6

    .prologue
    .line 1469
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1470
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1471
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1472
    const/4 v4, 0x1

    move v0, v4

    .line 1475
    :goto_1
    return v0

    .line 1469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1475
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 1662
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1665
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v2, v3, :cond_0

    .line 1666
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1669
    :cond_0
    return-void
.end method

.method getIndicatorPosition()F
    .locals 3

    .prologue
    .line 1485
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v1, v1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 1547
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-super/range {v8 .. v13}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1549
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v8}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1552
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v8}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 1553
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v8}, Landroid/support/design/widget/ValueAnimatorCompat;->getDuration()J

    move-result-wide v8

    move-wide v6, v8

    .line 1554
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mCurrentAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v11}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v11

    sub-float/2addr v10, v11

    move-wide v11, v6

    long-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 1560
    :goto_0
    return-void

    .line 1558
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1490
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1492
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_0

    .line 1543
    :goto_0
    return-void

    .line 1498
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v9}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v9}, Landroid/support/design/widget/TabLayout;->access$1600(Landroid/support/design/widget/TabLayout;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1499
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v9

    move v3, v9

    .line 1502
    const/4 v9, 0x0

    move v4, v9

    .line 1503
    const/4 v9, 0x0

    move v5, v9

    move v9, v3

    move v6, v9

    :goto_1
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 1504
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 1505
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 1506
    move v9, v4

    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v4, v9

    .line 1503
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1510
    :cond_2
    move v9, v4

    if-gtz v9, :cond_3

    .line 1512
    goto :goto_0

    .line 1515
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v10, 0x10

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;I)I

    move-result v9

    move v5, v9

    .line 1516
    const/4 v9, 0x0

    move v6, v9

    .line 1518
    move v9, v4

    move v10, v3

    mul-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v10

    move v11, v5

    const/4 v12, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_8

    .line 1521
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v3

    if-ge v9, v10, :cond_6

    .line 1522
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v8, v9

    .line 1524
    move-object v9, v8

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v10, v4

    if-ne v9, v10, :cond_4

    move-object v9, v8

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    .line 1525
    :cond_4
    move-object v9, v8

    move v10, v4

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1526
    move-object v9, v8

    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1527
    const/4 v9, 0x1

    move v6, v9

    .line 1521
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1538
    :cond_6
    :goto_3
    move v9, v6

    if-eqz v9, :cond_7

    .line 1540
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1543
    :cond_7
    goto/16 :goto_0

    .line 1533
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$1602(Landroid/support/design/widget/TabLayout;I)I

    move-result v9

    .line 1534
    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/design/widget/TabLayout;->access$1700(Landroid/support/design/widget/TabLayout;Z)V

    .line 1535
    const/4 v9, 0x1

    move v6, v9

    goto :goto_3
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 5

    .prologue
    .line 1479
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1480
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1481
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1482
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 4

    .prologue
    .line 1455
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1456
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1457
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1459
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 4

    .prologue
    .line 1462
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1463
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1464
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1466
    :cond_0
    return-void
.end method
