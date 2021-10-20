.class Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;
.super Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplHoneycombMr1.java"


# instance fields
.field final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;-><init>()V

    .line 29
    move-object v1, v0

    new-instance v2, Landroid/animation/ValueAnimator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 30
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 105
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 115
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setDuration(I)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    move v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 100
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 9

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 90
    return-void
.end method

.method public setIntValues(II)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 80
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    return-void
.end method

.method public setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    return-void
.end method

.method public setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    return-void
.end method
