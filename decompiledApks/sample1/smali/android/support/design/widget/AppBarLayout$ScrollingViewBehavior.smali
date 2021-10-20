.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# instance fields
.field private mOverlayTop:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1135
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 1138
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1140
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Params:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 1142
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Params_behavior_overlapTop:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    .line 1144
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1145
    return-void
.end method

.method private getOverlapForOffset(Landroid/view/View;I)I
    .locals 11

    .prologue
    .line 1191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    if-eqz v8, :cond_1

    move-object v8, v1

    instance-of v8, v8, Landroid/support/design/widget/AppBarLayout;

    if-eqz v8, :cond_1

    .line 1192
    move-object v8, v1

    check-cast v8, Landroid/support/design/widget/AppBarLayout;

    move-object v3, v8

    .line 1193
    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v8

    move v4, v8

    .line 1194
    move-object v8, v3

    invoke-static {v8}, Landroid/support/design/widget/AppBarLayout;->access$200(Landroid/support/design/widget/AppBarLayout;)I

    move-result v8

    move v5, v8

    .line 1196
    move v8, v5

    if-eqz v8, :cond_0

    move v8, v4

    move v9, v2

    add-int/2addr v8, v9

    move v9, v5

    if-gt v8, v9, :cond_0

    .line 1198
    const/4 v8, 0x0

    move v0, v8

    .line 1209
    :goto_0
    return v0

    .line 1200
    :cond_0
    move v8, v4

    move v9, v5

    sub-int/2addr v8, v9

    move v6, v8

    .line 1201
    move v8, v6

    if-eqz v8, :cond_1

    .line 1203
    move v8, v2

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 1204
    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v7

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    invoke-static {v8, v9, v10}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v8

    move v0, v8

    goto :goto_0

    .line 1209
    :cond_1
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    move v0, v8

    goto :goto_0
.end method

.method private updateOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 11

    .prologue
    .line 1178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    move-object v4, v6

    .line 1180
    move-object v6, v4

    instance-of v6, v6, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v6, :cond_0

    .line 1182
    move-object v6, v4

    check-cast v6, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v6

    move v5, v6

    .line 1183
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    move v8, v5

    add-int/2addr v7, v8

    move-object v8, v0

    move-object v9, v3

    move v10, v5

    invoke-direct {v8, v9, v10}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapForOffset(Landroid/view/View;I)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v6

    .line 1185
    const/4 v6, 0x1

    move v0, v6

    .line 1187
    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 7
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

    .prologue
    .line 1230
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1231
    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 1232
    move-object v5, v4

    instance-of v5, v5, Landroid/support/design/widget/AppBarLayout;

    if-eqz v5, :cond_0

    .line 1233
    move-object v5, v4

    move-object v0, v5

    .line 1236
    :goto_1
    return-object v0

    .line 1230
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1236
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOverlayTop()I
    .locals 2

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    move v0, v1

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 1241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    .line 1242
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    move v0, v2

    .line 1244
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/AppBarLayout;

    move v0, v4

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 1173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->updateOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    .line 1174
    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 12

    .prologue
    .line 1156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-super {v7, v8, v9, v10}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v7

    .line 1160
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 1161
    const/4 v7, 0x0

    move v5, v7

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v6, v7

    :goto_0
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_0

    .line 1162
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-direct {v7, v8, v9, v10}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->updateOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1167
    :cond_0
    const/4 v7, 0x1

    move v0, v7

    return v0

    .line 1161
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 14

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v7

    move v0, v7

    return v0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 1132
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setOverlayTop(I)V
    .locals 4

    .prologue
    .line 1218
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mOverlayTop:I

    .line 1219
    return-void
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 1132
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
