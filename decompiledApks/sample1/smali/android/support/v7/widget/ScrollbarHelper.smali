.class Landroid/support/v7/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I
    .locals 10

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_1

    .line 65
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 68
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    goto :goto_0

    .line 70
    :cond_2
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 72
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    move v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method static computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 17

    .prologue
    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v13, v4

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v2

    if-eqz v13, :cond_0

    move-object v13, v3

    if-nez v13, :cond_1

    .line 34
    :cond_0
    const/4 v13, 0x0

    move v0, v13

    .line 52
    :goto_0
    return v0

    .line 36
    :cond_1
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move-object v14, v4

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v7, v13

    .line 38
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move-object v14, v4

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 40
    move v13, v6

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v14

    move v15, v8

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_1
    move v9, v13

    .line 43
    move v13, v5

    if-nez v13, :cond_3

    .line 44
    move v13, v9

    move v0, v13

    goto :goto_0

    .line 40
    :cond_2
    const/4 v13, 0x0

    move v14, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 46
    :cond_3
    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move v10, v13

    .line 48
    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    move-object v14, v4

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v11, v13

    .line 50
    move v13, v10

    int-to-float v13, v13

    move v14, v11

    int-to-float v14, v14

    div-float/2addr v13, v14

    move v12, v13

    .line 52
    move v13, v9

    int-to-float v13, v13

    move v14, v12

    mul-float/2addr v13, v14

    move-object v14, v1

    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move v0, v13

    goto/16 :goto_0
.end method

.method static computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I
    .locals 11

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v3

    if-nez v8, :cond_1

    .line 84
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 96
    :goto_0
    return v0

    .line 86
    :cond_1
    move v8, v5

    if-nez v8, :cond_2

    .line 87
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    move v0, v8

    goto :goto_0

    .line 90
    :cond_2
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    move v6, v8

    .line 92
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 96
    move v8, v6

    int-to-float v8, v8

    move v9, v7

    int-to-float v9, v9

    div-float/2addr v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v0, v8

    goto :goto_0
.end method
