.class Landroid/support/design/widget/FloatingActionButtonLollipop;
.super Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 43
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    :cond_0
    return-void
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method jumpDrawableToCurrentState()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CircularBorderDrawableLollipop;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/design/widget/CircularBorderDrawableLollipop;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method onDrawableStateChanged([I)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 13

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 55
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 56
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_0
    move v6, v4

    if-lez v6, :cond_1

    .line 61
    move-object v6, v0

    move-object v7, v0

    move v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v7

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 62
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v11, v9, v10

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    .line 68
    :goto_0
    move-object v6, v0

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move v9, v3

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v10, v5

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v6, v7}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 73
    return-void

    .line 64
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 65
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v6

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 87
    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 13

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroid/animation/StateListAnimator;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Landroid/animation/StateListAnimator;-><init>()V

    move-object v2, v3

    .line 94
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonLollipop;->PRESSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v7, "translationZ"

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    aput v11, v9, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 96
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v7, "translationZ"

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    aput v11, v9, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 99
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/FloatingActionButtonLollipop;->EMPTY_STATE_SET:[I

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v7, "translationZ"

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 102
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 103
    return-void
.end method

.method setRippleColor(I)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->setRippleColor(I)V

    goto :goto_0
.end method
