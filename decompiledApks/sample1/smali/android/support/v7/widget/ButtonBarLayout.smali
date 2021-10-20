.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 40
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 41
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 42
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private isStacked()Z
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 94
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 95
    move-object v5, v0

    sget v6, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 96
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 97
    move-object v5, v2

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 102
    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v4, v5

    :goto_3
    move v5, v4

    if-ltz v5, :cond_4

    .line 103
    move-object v5, v0

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 102
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 93
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 94
    :cond_2
    const/16 v6, 0x50

    goto :goto_1

    .line 97
    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    .line 105
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v8, v1

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    move v3, v8

    .line 58
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v8, :cond_1

    .line 59
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v8, v9, :cond_0

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 63
    :cond_0
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 65
    :cond_1
    const/4 v8, 0x0

    move v4, v8

    .line 70
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v1

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_4

    .line 71
    move v8, v3

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v5, v8

    .line 73
    const/4 v8, 0x1

    move v4, v8

    .line 77
    :goto_0
    move-object v8, v0

    move v9, v5

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v8

    if-nez v8, :cond_2

    .line 79
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v8

    move v6, v8

    .line 80
    move v8, v6

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    move v7, v8

    .line 81
    move v8, v7

    const/high16 v9, 0x1000000

    if-ne v8, v9, :cond_2

    .line 82
    move-object v8, v0

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 84
    const/4 v8, 0x1

    move v4, v8

    .line 87
    :cond_2
    move v8, v4

    if-eqz v8, :cond_3

    .line 88
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    :cond_3
    return-void

    .line 75
    :cond_4
    move v8, v1

    move v5, v8

    goto :goto_0
.end method

.method public setAllowStacking(Z)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 47
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 48
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 51
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 53
    :cond_1
    return-void
.end method
