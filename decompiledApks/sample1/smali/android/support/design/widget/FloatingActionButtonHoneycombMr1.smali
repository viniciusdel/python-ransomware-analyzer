.class Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;
.super Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.source "FloatingActionButtonHoneycombMr1.java"


# instance fields
.field private mIsHiding:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z

    move v0, v2

    return v0
.end method

.method private updateFromViewRotation(F)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v2, :cond_0

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    move v3, v1

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 133
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v2, :cond_1

    .line 134
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    move v3, v1

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 8
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 48
    move-object v2, v1

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    move-object v2, v1

    if-eqz v2, :cond_4

    .line 57
    move-object v2, v1

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 88
    :cond_4
    :goto_1
    goto :goto_0

    .line 60
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;-><init>(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    goto :goto_1
.end method

.method onPreDraw()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->updateFromViewRotation(F)V

    .line 41
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 8
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 95
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 96
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 97
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;-><init>(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 119
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 121
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 122
    move-object v2, v1

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    goto :goto_0
.end method
