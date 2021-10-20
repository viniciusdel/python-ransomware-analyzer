.class public Landroid/support/v7/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 63
    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 70
    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 188
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object v0, v1

    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 193
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object v0, v1

    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 178
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object v0, v1

    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 183
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object v0, v1

    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 168
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object v0, v1

    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/util/TypedValue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 173
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object v0, v1

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 199
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v1, :cond_0

    .line 200
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {v1}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    .line 202
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 207
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {v1}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 91
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    move-object v3, v12

    .line 92
    move-object v12, v3

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v12, v13, :cond_8

    const/4 v12, 0x1

    :goto_0
    move v4, v12

    .line 94
    move v12, v1

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v5, v12

    .line 95
    move v12, v2

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v6, v12

    .line 97
    const/4 v12, 0x0

    move v7, v12

    .line 98
    move v12, v5

    const/high16 v13, -0x80000000

    if-ne v12, v13, :cond_1

    .line 99
    move v12, v4

    if-eqz v12, :cond_9

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    :goto_1
    move-object v8, v12

    .line 100
    move-object v12, v8

    if-eqz v12, :cond_1

    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_1

    .line 101
    const/4 v12, 0x0

    move v9, v12

    .line 102
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a

    .line 103
    move-object v12, v8

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    .line 107
    :cond_0
    :goto_2
    move v12, v9

    if-lez v12, :cond_1

    .line 108
    move v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 109
    move v12, v1

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v10, v12

    .line 110
    move v12, v9

    move v13, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v1, v12

    .line 112
    const/4 v12, 0x1

    move v7, v12

    .line 117
    :cond_1
    move v12, v6

    const/high16 v13, -0x80000000

    if-ne v12, v13, :cond_3

    .line 118
    move v12, v4

    if-eqz v12, :cond_b

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    :goto_3
    move-object v8, v12

    .line 119
    move-object v12, v8

    if-eqz v12, :cond_3

    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_3

    .line 120
    const/4 v12, 0x0

    move v9, v12

    .line 121
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_c

    .line 122
    move-object v12, v8

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    .line 126
    :cond_2
    :goto_4
    move v12, v9

    if-lez v12, :cond_3

    .line 127
    move v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 128
    move v12, v2

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v10, v12

    .line 129
    move v12, v9

    move v13, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v2, v12

    .line 135
    :cond_3
    move-object v12, v0

    move v13, v1

    move v14, v2

    invoke-super {v12, v13, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 137
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v12

    move v8, v12

    .line 138
    const/4 v12, 0x0

    move v9, v12

    .line 140
    move v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v1, v12

    .line 142
    move v12, v7

    if-nez v12, :cond_6

    move v12, v5

    const/high16 v13, -0x80000000

    if-ne v12, v13, :cond_6

    .line 143
    move v12, v4

    if-eqz v12, :cond_d

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    :goto_5
    move-object v10, v12

    .line 144
    move-object v12, v10

    if-eqz v12, :cond_6

    move-object v12, v10

    iget v12, v12, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_6

    .line 145
    const/4 v12, 0x0

    move v11, v12

    .line 146
    move-object v12, v10

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_e

    .line 147
    move-object v12, v10

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move v11, v12

    .line 151
    :cond_4
    :goto_6
    move v12, v11

    if-lez v12, :cond_5

    .line 152
    move v12, v11

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v11, v12

    .line 154
    :cond_5
    move v12, v8

    move v13, v11

    if-ge v12, v13, :cond_6

    .line 155
    move v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v1, v12

    .line 156
    const/4 v12, 0x1

    move v9, v12

    .line 161
    :cond_6
    move v12, v9

    if-eqz v12, :cond_7

    .line 162
    move-object v12, v0

    move v13, v1

    move v14, v2

    invoke-super {v12, v13, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 164
    :cond_7
    return-void

    .line 92
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 99
    :cond_9
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 104
    :cond_a
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_0

    .line 105
    move-object v12, v8

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    move-object v14, v3

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    goto/16 :goto_2

    .line 118
    :cond_b
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 123
    :cond_c
    move-object v12, v8

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_2

    .line 124
    move-object v12, v8

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    move-object v14, v3

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    move v9, v12

    goto/16 :goto_4

    .line 143
    :cond_d
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    goto :goto_5

    .line 148
    :cond_e
    move-object v12, v10

    iget v12, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_4

    .line 149
    move-object v12, v10

    move-object v13, v3

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    move-object v14, v3

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    move v11, v12

    goto :goto_6
.end method

.method public setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    .line 74
    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 10

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 87
    :cond_0
    return-void
.end method
