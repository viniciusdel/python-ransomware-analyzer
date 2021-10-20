.class public Landroid/support/design/internal/ForegroundLinearLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ForegroundLinearLayout.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I

.field protected mForegroundInPadding:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 37
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/internal/ForegroundLinearLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 39
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/internal/ForegroundLinearLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 41
    move-object v2, v0

    const/16 v3, 0x77

    iput v3, v2, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    .line 43
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 45
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 39
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 41
    move-object v6, v0

    const/16 v7, 0x77

    iput v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    .line 43
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 45
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 58
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Landroid/support/design/R$styleable;->ForegroundLinearLayout:[I

    move v9, v3

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 61
    move-object v6, v0

    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    move-object v9, v0

    iget v9, v9, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    .line 64
    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 65
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 66
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/design/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    move-object v6, v0

    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 72
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    .line 194
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 195
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    move-object v2, v7

    .line 197
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    if-eqz v7, :cond_0

    .line 198
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 199
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mSelfBounds:Landroid/graphics/Rect;

    move-object v3, v7

    .line 200
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mOverlayBounds:Landroid/graphics/Rect;

    move-object v4, v7

    .line 202
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/internal/ForegroundLinearLayout;->getRight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/internal/ForegroundLinearLayout;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 203
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/internal/ForegroundLinearLayout;->getBottom()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/internal/ForegroundLinearLayout;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 205
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    if-eqz v7, :cond_2

    .line 206
    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    :goto_0
    move-object v7, v0

    iget v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    move-object v10, v3

    move-object v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 214
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    :cond_0
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    :cond_1
    return-void

    .line 208
    :cond_2
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingLeft()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingTop()I

    move-result v9

    move v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    .line 224
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 225
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 227
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableStateChanged()V

    .line 128
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 131
    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    move v0, v1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    .line 120
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 121
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 123
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 181
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-boolean v7, v7, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    move v8, v1

    or-int/2addr v7, v8

    iput-boolean v7, v6, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 182
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    .line 187
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundBoundsChanged:Z

    .line 188
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    if-eq v3, v4, :cond_3

    .line 143
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 144
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/ForegroundLinearLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 150
    move-object v3, v1

    if-eqz v3, :cond_4

    .line 151
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    .line 152
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    .line 156
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    const/16 v4, 0x77

    if-ne v3, v4, :cond_2

    .line 157
    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 158
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 163
    :cond_2
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/ForegroundLinearLayout;->requestLayout()V

    .line 164
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/ForegroundLinearLayout;->invalidate()V

    .line 166
    :cond_3
    return-void

    .line 161
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    move v4, v1

    if-eq v3, v4, :cond_3

    .line 93
    move v3, v1

    const v4, 0x800007

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 94
    move v3, v1

    const v4, 0x800003

    or-int/2addr v3, v4

    move v1, v3

    .line 97
    :cond_0
    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    if-nez v3, :cond_1

    .line 98
    move v3, v1

    const/16 v4, 0x30

    or-int/lit8 v3, v3, 0x30

    move v1, v3

    .line 101
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    .line 103
    move-object v3, v0

    iget v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundGravity:I

    const/16 v4, 0x77

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 104
    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 105
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 108
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/ForegroundLinearLayout;->requestLayout()V

    .line 110
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ForegroundLinearLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
