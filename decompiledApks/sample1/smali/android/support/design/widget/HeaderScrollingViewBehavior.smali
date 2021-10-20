.class abstract Landroid/support/design/widget/HeaderScrollingViewBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 19

    .prologue
    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v7, v13

    .line 45
    move v13, v7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move v13, v7

    const/4 v14, -0x2

    if-ne v13, v14, :cond_5

    .line 50
    :cond_0
    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v13

    move-object v8, v13

    .line 51
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 53
    const/4 v13, 0x0

    move v0, v13

    .line 84
    :goto_0
    return v0

    .line 56
    :cond_1
    move-object v13, v0

    move-object v14, v8

    invoke-virtual {v13, v14}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v13

    move-object v9, v13

    .line 57
    move-object v13, v9

    if-eqz v13, :cond_5

    move-object v13, v9

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 58
    move-object v13, v9

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 61
    move-object v13, v2

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 64
    :cond_2
    move v13, v5

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v10, v13

    .line 65
    move v13, v10

    if-nez v13, :cond_3

    .line 67
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v13

    move v10, v13

    .line 70
    :cond_3
    move v13, v10

    move-object v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    move-object v14, v0

    move-object v15, v9

    invoke-virtual {v14, v15}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v14

    add-int/2addr v13, v14

    move v11, v13

    .line 72
    move v13, v11

    move v14, v7

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    const/high16 v14, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v12, v13

    .line 78
    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v12

    move/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 81
    const/4 v13, 0x1

    move v0, v13

    goto :goto_0

    .line 72
    :cond_4
    const/high16 v14, -0x80000000

    goto :goto_1

    .line 84
    :cond_5
    const/4 v13, 0x0

    move v0, v13

    goto :goto_0
.end method
