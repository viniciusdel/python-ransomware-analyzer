.class final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:I

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedShadowColor:I

.field private mExpandedShadowDx:F

.field private mExpandedShadowDy:F

.field private mExpandedShadowRadius:F

.field private mExpandedTextColor:I

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 48
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 63
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 64
    move-object v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 65
    move-object v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 106
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    .line 108
    move-object v2, v0

    new-instance v3, Landroid/text/TextPaint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 109
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 111
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 112
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 113
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    .line 114
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 12

    .prologue
    .line 635
    move v0, p0

    move v1, p1

    move v2, p2

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v2

    sub-float/2addr v8, v9

    move v3, v8

    .line 636
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v4, v8

    .line 637
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    .line 638
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v6, v8

    .line 639
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 640
    move v8, v4

    float-to-int v8, v8

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    move v11, v7

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    return v0
.end method

.method private calculateBaseOffsets()V
    .locals 11

    .prologue
    .line 344
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    move v1, v7

    .line 347
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 348
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_0
    move v2, v7

    .line 350
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v7, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    move v3, v7

    .line 352
    move v7, v3

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_0

    .line 361
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    move v4, v7

    .line 362
    move v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 363
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    move v9, v5

    add-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 366
    :goto_2
    move v7, v3

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    sparse-switch v7, :sswitch_data_1

    .line 375
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 379
    :goto_3
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 380
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    :goto_4
    move v2, v7

    .line 382
    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_5
    invoke-static {v7, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    move v4, v7

    .line 384
    move v7, v4

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_2

    .line 393
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 394
    move v7, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 395
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    move v9, v6

    add-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 398
    :goto_6
    move v7, v4

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    sparse-switch v7, :sswitch_data_3

    .line 407
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 412
    :goto_7
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 414
    move-object v7, v0

    move v8, v1

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 415
    return-void

    .line 348
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 350
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 354
    :sswitch_0
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 355
    goto/16 :goto_2

    .line 357
    :sswitch_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 358
    goto/16 :goto_2

    .line 368
    :sswitch_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 369
    goto/16 :goto_3

    .line 371
    :sswitch_3
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move v9, v2

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 372
    goto/16 :goto_3

    .line 380
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 382
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 386
    :sswitch_4
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 387
    goto :goto_6

    .line 389
    :sswitch_5
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 390
    goto :goto_6

    .line 400
    :sswitch_6
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    move v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 401
    goto :goto_7

    .line 403
    :sswitch_7
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move v9, v2

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 404
    goto/16 :goto_7

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 366
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 384
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 398
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 314
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 479
    move v3, v2

    if-eqz v3, :cond_1

    sget-object v3, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v3

    move v0, v3

    return v0

    .line 477
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 479
    :cond_1
    sget-object v3, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1
.end method

.method private calculateOffsets(F)V
    .locals 9

    .prologue
    .line 317
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 318
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 320
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 323
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 326
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    if-eq v2, v3, :cond_0

    .line 329
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 334
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    move v5, v1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    move v6, v1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    move v7, v1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    move v8, v1

    invoke-static {v6, v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 340
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 341
    return-void

    .line 331
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private calculateUsingTextSize(F)V
    .locals 10

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    .line 548
    :goto_0
    return-void

    .line 503
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .line 505
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-static {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 506
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    move v2, v6

    .line 507
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v3, v6

    .line 508
    move-object v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    .line 509
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_1

    .line 510
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 511
    const/4 v6, 0x1

    move v4, v6

    .line 530
    :cond_1
    :goto_1
    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 531
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    move v7, v3

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    if-nez v6, :cond_2

    move v6, v4

    if-eqz v6, :cond_9

    :cond_2
    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 532
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 533
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 536
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    move v6, v4

    if-eqz v6, :cond_5

    .line 537
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 538
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 541
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move v8, v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v7, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v5, v6

    .line 543
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 544
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 545
    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    .line 548
    :cond_5
    goto/16 :goto_0

    .line 514
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    move v2, v6

    .line 515
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move v3, v6

    .line 516
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_7

    .line 517
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 518
    const/4 v6, 0x1

    move v4, v6

    .line 521
    :cond_7
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {v6, v7}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 523
    move-object v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto/16 :goto_1

    .line 526
    :cond_8
    move-object v6, v0

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr v7, v8

    iput v7, v6, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto/16 :goto_1

    .line 531
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method private clearTexture()V
    .locals 3

    .prologue
    .line 606
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 607
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 608
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 610
    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 12

    .prologue
    .line 551
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 557
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    .line 558
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    .line 560
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v1, v4

    .line 561
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, v4

    .line 563
    move v4, v1

    if-lez v4, :cond_2

    move v4, v2

    if-gtz v4, :cond_3

    .line 564
    :cond_2
    goto :goto_0

    .line 567
    :cond_3
    move-object v4, v0

    move v5, v1

    move v6, v2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 569
    new-instance v4, Landroid/graphics/Canvas;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v4

    .line 570
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    move v9, v2

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 572
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v4, :cond_4

    .line 574
    move-object v4, v0

    new-instance v5, Landroid/graphics/Paint;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    .line 576
    :cond_4
    goto/16 :goto_0
.end method

.method private interpolateBounds(F)V
    .locals 7

    .prologue
    .line 418
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 420
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 422
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 424
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 426
    return-void
.end method

.method private static isClose(FF)Z
    .locals 4

    .prologue
    .line 617
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 7

    .prologue
    .line 645
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v3

    if-eqz v4, :cond_0

    .line 646
    move-object v4, v3

    move v5, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    move v2, v4

    .line 648
    :cond_0
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v4

    move v0, v4

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 13

    .prologue
    .line 244
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v1

    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const v11, 0x10103ac

    aput v11, v9, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 247
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 248
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 249
    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 252
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v4

    move-object v0, v6

    .line 254
    :goto_0
    return-object v0

    .line 252
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 7

    .prologue
    .line 652
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v6, v2

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move v6, v3

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v6, v4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    return v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 5

    .prologue
    .line 485
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 488
    move-object v2, v0

    sget-boolean v3, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    .line 490
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v2, :cond_0

    .line 492
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 495
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 496
    return-void

    .line 488
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 429
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v8

    move v2, v8

    .line 431
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v8, :cond_2

    .line 432
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    move v3, v8

    .line 433
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    move v4, v8

    .line 435
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 441
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 443
    move v8, v5

    if-eqz v8, :cond_4

    .line 444
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v6, v8

    .line 445
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v7, v8

    .line 457
    :goto_1
    move v8, v5

    if-eqz v8, :cond_0

    .line 458
    move v8, v4

    move v9, v6

    add-float/2addr v8, v9

    move v4, v8

    .line 461
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 462
    move-object v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    move v11, v3

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 465
    :cond_1
    move v8, v5

    if-eqz v8, :cond_5

    .line 467
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    move v10, v3

    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 473
    :cond_2
    :goto_2
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 474
    return-void

    .line 435
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 447
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v6, v8

    .line 448
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v8, v9

    move v7, v8

    goto :goto_1

    .line 469
    :cond_5
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move v12, v3

    move v13, v4

    move-object v14, v0

    iget-object v14, v14, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method getCollapsedTextColor()I
    .locals 2

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    move v0, v1

    return v0
.end method

.method getCollapsedTextGravity()I
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    move v0, v1

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v0, v1

    return v0
.end method

.method getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getExpandedTextColor()I
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    move v0, v1

    return v0
.end method

.method getExpandedTextGravity()I
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    move v0, v1

    return v0
.end method

.method getExpandedTextSize()F
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move v0, v1

    return v0
.end method

.method getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getExpansionFraction()F
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    move v0, v1

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method onBoundsChanged()V
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public recalculate()V
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 582
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 583
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 585
    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 166
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 168
    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 7

    .prologue
    .line 198
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 199
    move-object v3, v2

    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    .line 203
    :cond_0
    move-object v3, v2

    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 207
    :cond_1
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 208
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 209
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 210
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 211
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 214
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 217
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 218
    return-void
.end method

.method setCollapsedTextColor(I)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 142
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 145
    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 188
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 189
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 191
    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 135
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 136
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 138
    :cond_0
    return-void
.end method

.method setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 259
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 260
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 262
    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 10

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 158
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 160
    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 7

    .prologue
    .line 221
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 222
    move-object v3, v2

    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    .line 226
    :cond_0
    move-object v3, v2

    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 230
    :cond_1
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    .line 231
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    .line 232
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDy:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    .line 233
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$styleable;->TextAppearance_android_shadowRadius:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    .line 234
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 237
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 240
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 241
    return-void
.end method

.method setExpandedTextColor(I)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 149
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    .line 150
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 152
    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 177
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 178
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 180
    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 128
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 129
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 131
    :cond_0
    return-void
.end method

.method setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 266
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 267
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 269
    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/MathUtils;->constrain(FFF)F

    move-result v2

    move v1, v2

    .line 294
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 295
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    .line 296
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 298
    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 123
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 124
    return-void
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 594
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    .line 595
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 596
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 597
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 599
    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 119
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 8

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v3, v2, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 273
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 274
    return-void
.end method
