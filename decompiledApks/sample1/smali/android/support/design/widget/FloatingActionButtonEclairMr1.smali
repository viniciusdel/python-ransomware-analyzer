.class Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field private mElevation:F

.field private mIsHiding:Z

.field private mPressedTranslationZ:F

.field mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private mStateListAnimator:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 54
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10e0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mAnimationDuration:I

    .line 56
    move-object v3, v0

    new-instance v4, Landroid/support/design/widget/StateListAnimator;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 57
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/StateListAnimator;->setTarget(Landroid/view/View;)V

    .line 60
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->PRESSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/view/animation/Animation;)V

    .line 62
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->FOCUSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/view/animation/Animation;)V

    .line 65
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->EMPTY_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method static synthetic access$202(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Z)Z
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)F
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)F
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    move v0, v1

    return v0
.end method

.method private static createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    .line 266
    move v0, p0

    const/4 v4, 0x3

    new-array v4, v4, [[I

    move-object v1, v4

    .line 267
    const/4 v4, 0x3

    new-array v4, v4, [I

    move-object v2, v4

    .line 268
    const/4 v4, 0x0

    move v3, v4

    .line 270
    move-object v4, v1

    move v5, v3

    sget-object v6, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->FOCUSED_ENABLED_STATE_SET:[I

    aput-object v6, v4, v5

    .line 271
    move-object v4, v2

    move v5, v3

    move v6, v0

    aput v6, v4, v5

    .line 272
    add-int/lit8 v3, v3, 0x1

    .line 274
    move-object v4, v1

    move v5, v3

    sget-object v6, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v6, v4, v5

    .line 275
    move-object v4, v2

    move v5, v3

    move v6, v0

    aput v6, v4, v5

    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 279
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x0

    new-array v6, v6, [I

    aput-object v6, v4, v5

    .line 280
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 281
    add-int/lit8 v3, v3, 0x1

    .line 283
    new-instance v4, Landroid/content/res/ColorStateList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v4

    return-object v0
.end method

.method private setupAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 225
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private updatePadding()V
    .locals 8

    .prologue
    .line 217
    move-object v0, p0

    new-instance v2, Landroid/graphics/Rect;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v2

    .line 218
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .line 219
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 220
    return-void
.end method


# virtual methods
.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 9
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 162
    move-object v3, v1

    invoke-interface {v3}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/R$anim;->design_fab_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    move-object v2, v3

    .line 169
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 171
    move-object v3, v2

    new-instance v4, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 186
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    goto :goto_0
.end method

.method jumpDrawableToCurrentState()V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v1}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    .line 155
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    .line 150
    return-void
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 17

    .prologue
    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 76
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 77
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v2

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 81
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object v5, v7

    .line 85
    move-object v7, v0

    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    move v8, v3

    invoke-static {v8}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 87
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 90
    move v7, v4

    if-lez v7, :cond_1

    .line 91
    move-object v7, v0

    move-object v8, v0

    move v9, v4

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 92
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object v6, v7

    .line 98
    :goto_0
    move-object v7, v0

    new-instance v8, Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    invoke-direct {v12, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v12}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v12

    move-object v13, v0

    iget v13, v13, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    move-object v14, v0

    iget v14, v14, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    move-object v15, v0

    iget v15, v15, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    add-float/2addr v14, v15

    invoke-direct/range {v9 .. v14}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 104
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 106
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {v7, v8}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->updatePadding()V

    .line 109
    return-void

    .line 94
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 95
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object v6, v7

    goto :goto_0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 114
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v2, :cond_0

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 117
    :cond_0
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 122
    return-void
.end method

.method setElevation(F)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move v3, v1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 133
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    .line 134
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->updatePadding()V

    .line 136
    :cond_0
    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v2, :cond_0

    .line 141
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F

    .line 142
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F

    move v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->setMaxShadowSize(F)V

    .line 143
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->updatePadding()V

    .line 145
    :cond_0
    return-void
.end method

.method setRippleColor(I)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v3}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 127
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 9
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mIsHiding:Z

    if-eqz v3, :cond_2

    .line 194
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 195
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/R$anim;->design_fab_in:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    move-object v2, v3

    .line 198
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    move-object v3, v2

    new-instance v4, Landroid/support/design/widget/FloatingActionButtonEclairMr1$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$2;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 208
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mView:Landroid/view/View;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 211
    move-object v3, v1

    invoke-interface {v3}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    goto :goto_0
.end method
