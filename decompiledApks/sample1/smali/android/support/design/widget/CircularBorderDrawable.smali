.class Landroid/support/design/widget/CircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularBorderDrawable.java"


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field private mBorderTint:Landroid/content/res/ColorStateList;

.field mBorderWidth:F

.field private mBottomInnerStrokeColor:I

.field private mBottomOuterStrokeColor:I

.field private mCurrentBorderTintColor:I

.field private mInvalidateShader:Z

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field final mRectF:Landroid/graphics/RectF;

.field private mRotation:F

.field private mTopInnerStrokeColor:I

.field private mTopOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 45
    move-object v1, v0

    new-instance v2, Landroid/graphics/RectF;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/CircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    .line 57
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 62
    move-object v1, v0

    new-instance v2, Landroid/graphics/Paint;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 15

    .prologue
    .line 182
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    move-object v1, v5

    .line 183
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 185
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v2, v5

    .line 187
    const/4 v5, 0x6

    new-array v5, v5, [I

    move-object v3, v5

    .line 188
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CircularBorderDrawable;->mTopOuterStrokeColor:I

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 189
    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 190
    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 192
    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 194
    move-object v5, v3

    const/4 v6, 0x4

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 195
    move-object v5, v3

    const/4 v6, 0x5

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CircularBorderDrawable;->mBottomOuterStrokeColor:I

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v7

    aput v7, v5, v6

    .line 197
    const/4 v5, 0x6

    new-array v5, v5, [F

    move-object v4, v5

    .line 198
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 199
    move-object v5, v4

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    .line 200
    move-object v5, v4

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v5, v6

    .line 201
    move-object v5, v4

    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v5, v6

    .line 202
    move-object v5, v4

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v2

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 203
    move-object v5, v4

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 205
    new-instance v5, Landroid/graphics/LinearGradient;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object v10, v1

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    move-object v11, v3

    move-object v12, v4

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v4, :cond_0

    .line 89
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v4

    .line 90
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 93
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move v2, v4

    .line 94
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    move-object v3, v4

    .line 98
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 99
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 100
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 101
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 102
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 103
    move-object v4, v3

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 105
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 106
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mRotation:F

    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 108
    move-object v4, v1

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 109
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 110
    return-void
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, -0x3

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 8

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v2, v3

    .line 115
    move-object v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 155
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 165
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    move v2, v3

    .line 166
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    if-eq v3, v4, :cond_0

    .line 167
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 168
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    .line 171
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v3, :cond_1

    .line 172
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 174
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    move v0, v3

    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 123
    return-void
.end method

.method setBorderTint(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 127
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CircularBorderDrawable;->getState()[I

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    .line 129
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    .line 130
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 131
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 132
    return-void
.end method

.method setBorderWidth(F)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    .line 80
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    const v4, 0x3faaa993    # 1.3333f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 84
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 137
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 138
    return-void
.end method

.method setGradientColors(IIII)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/design/widget/CircularBorderDrawable;->mTopOuterStrokeColor:I

    .line 69
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    .line 70
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/design/widget/CircularBorderDrawable;->mBottomOuterStrokeColor:I

    .line 71
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    .line 72
    return-void
.end method

.method final setRotation(F)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CircularBorderDrawable;->mRotation:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 147
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CircularBorderDrawable;->mRotation:F

    .line 148
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 150
    :cond_0
    return-void
.end method
