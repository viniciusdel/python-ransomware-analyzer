.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field private static final SIZE_MINI:I = 0x1

.field private static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mContentPadding:I

.field private final mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .prologue
    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    move-object v10, v1

    invoke-static {v10}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 112
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 114
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    move v13, v3

    sget v14, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v4, v10

    .line 117
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iput-object v11, v10, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 118
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/support/design/widget/FloatingActionButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v11

    iput-object v11, v10, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 120
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, v10, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 121
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v10, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 122
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    .line 123
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v5, v10

    .line 124
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    move v6, v10

    .line 126
    move-object v10, v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    new-instance v10, Landroid/support/design/widget/FloatingActionButton$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    move-object v7, v10

    .line 148
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    move v8, v10

    .line 149
    move v10, v8

    const/16 v11, 0x15

    if-lt v10, v11, :cond_0

    .line 150
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/FloatingActionButtonLollipop;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Landroid/support/design/widget/FloatingActionButtonLollipop;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    iput-object v11, v10, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    .line 157
    :goto_0
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroid/support/design/R$dimen;->design_fab_content_size:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    move v9, v10

    .line 159
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v11

    move v12, v9

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/support/design/widget/FloatingActionButton;->mContentPadding:I

    .line 161
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v13, v0

    iget v13, v13, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    move-object v14, v0

    iget v14, v14, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 163
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 164
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/design/widget/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 165
    return-void

    .line 151
    :cond_0
    move v10, v8

    const/16 v11, 0xc

    if-lt v10, v11, :cond_1

    .line 152
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    iput-object v11, v10, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    goto :goto_0

    .line 154
    :cond_1
    move-object v10, v0

    new-instance v11, Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    iput-object v11, v10, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mContentPadding:I

    move v0, v1

    return v0
.end method

.method static synthetic access$201(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 384
    move v0, p0

    move-object v1, p1

    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 396
    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    .line 386
    :sswitch_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 388
    :sswitch_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 390
    :sswitch_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 392
    :sswitch_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 394
    :sswitch_4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method private static resolveAdjustedSize(II)I
    .locals 7

    .prologue
    .line 360
    move v0, p0

    move v1, p1

    move v5, v0

    move v2, v5

    .line 361
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 362
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 363
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 380
    :goto_0
    move v5, v2

    move v0, v5

    return v0

    .line 367
    :sswitch_0
    move v5, v0

    move v2, v5

    .line 368
    goto :goto_0

    .line 373
    :sswitch_1
    move v5, v0

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v5

    .line 374
    goto :goto_0

    .line 377
    :sswitch_2
    move v5, v4

    move v2, v5

    goto :goto_0

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 7
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 308
    const/4 v2, 0x0

    move-object v0, v2

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/design/widget/FloatingActionButton$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButton$2;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 349
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 350
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 3

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    packed-switch v1, :pswitch_data_0

    .line 330
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    :goto_0
    return v0

    .line 327
    :pswitch_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 292
    return-void
.end method

.method public hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 302
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    .line 356
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 357
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 337
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onAttachedToWindow()V

    .line 338
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 343
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDetachedFromWindow()V

    .line 344
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v7

    move v3, v7

    .line 171
    move v7, v3

    move v8, v1

    invoke-static {v7, v8}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v7

    move v4, v7

    .line 172
    move v7, v3

    move v8, v2

    invoke-static {v7, v8}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v7

    move v5, v7

    .line 176
    move v7, v4

    move v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 179
    move-object v7, v0

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 182
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    move v1, p1

    const-string v2, "FloatingActionButton"

    const-string v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 266
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    const-string v2, "FloatingActionButton"

    const-string v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    const-string v2, "FloatingActionButton"

    const-string v3, "Setting a custom background is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 261
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 218
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 219
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 248
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 249
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 193
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 194
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 274
    return-void
.end method

.method public show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 284
    return-void
.end method
