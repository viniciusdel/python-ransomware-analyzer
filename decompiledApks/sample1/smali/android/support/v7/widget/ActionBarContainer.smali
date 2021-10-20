.class public Landroid/support/v7/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    new-instance v5, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    :goto_0
    move-object v3, v5

    .line 60
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 64
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    .line 69
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContainer;->getId()I

    move-result v5

    sget v6, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    if-ne v5, v6, :cond_0

    .line 70
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    .line 71
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 77
    return-void

    .line 57
    :cond_1
    new-instance v5, Landroid/support/v7/widget/ActionBarBackgroundDrawable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    goto :goto_0

    .line 75
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v3

    .line 245
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 157
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 160
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 163
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 166
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 170
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 171
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 172
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 175
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 177
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 181
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 83
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 84
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 18

    .prologue
    .line 280
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-super/range {v12 .. v17}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 282
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    move-object v7, v12

    .line 283
    move-object v12, v7

    if-eqz v12, :cond_3

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_0
    move v8, v12

    .line 285
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 286
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    move v9, v12

    .line 287
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object v10, v12

    .line 288
    move-object v12, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move v11, v12

    .line 289
    move-object v12, v7

    move v13, v3

    move v14, v9

    move v15, v11

    sub-int/2addr v14, v15

    move-object v15, v10

    iget v15, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    move v15, v5

    move/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 293
    :cond_0
    const/4 v12, 0x0

    move v9, v12

    .line 294
    move-object v12, v1

    iget-boolean v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v12, :cond_4

    .line 295
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 296
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 297
    const/4 v12, 0x1

    move v9, v12

    .line 321
    :cond_1
    :goto_1
    move v12, v9

    if-eqz v12, :cond_2

    .line 322
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 324
    :cond_2
    return-void

    .line 283
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 300
    :cond_4
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_5

    .line 301
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_6

    .line 302
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    :goto_2
    const/4 v12, 0x1

    move v9, v12

    .line 313
    :cond_5
    move-object v12, v1

    move v13, v8

    iput-boolean v13, v12, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    .line 314
    move v12, v8

    if-eqz v12, :cond_1

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 315
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move-object v13, v7

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v7

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v7

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    const/4 v12, 0x1

    move v9, v12

    goto :goto_1

    .line 304
    :cond_6
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz v12, :cond_7

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 306
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object v14, v1

    iget-object v14, v14, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 309
    :cond_7
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 11

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_0

    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    if-ltz v6, :cond_0

    .line 252
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    move v7, v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v2, v6

    .line 255
    :cond_0
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 257
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 276
    :goto_0
    return-void

    .line 259
    :cond_1
    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    move v3, v6

    .line 260
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    move v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v6, v7, :cond_2

    .line 263
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 264
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    move v4, v6

    .line 270
    :goto_1
    move v6, v3

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_5

    move v6, v2

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    :goto_2
    move v5, v6

    .line 272
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v7

    move v8, v4

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    move v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 276
    :cond_2
    goto :goto_0

    .line 265
    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 266
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    move v4, v6

    goto :goto_1

    .line 268
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    goto :goto_1

    .line 270
    :cond_5
    const v6, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 206
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 89
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 92
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 93
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 95
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 101
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 102
    return-void

    .line 99
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 125
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 129
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 136
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 137
    return-void

    .line 134
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 107
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 111
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 112
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 113
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 119
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V

    .line 120
    return-void

    .line 117
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 211
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 213
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 214
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 215
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 216
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 217
    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 221
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 192
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/high16 v3, 0x60000

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 194
    return-void

    .line 192
    :cond_0
    const/high16 v3, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    move v3, v1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 143
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 144
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 145
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 146
    :cond_2
    return-void

    .line 142
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_3

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v2, :cond_3

    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
