.class Landroid/support/design/widget/ValueAnimatorCompat;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ValueAnimatorCompat$Impl;,
        Landroid/support/design/widget/ValueAnimatorCompat$Creator;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat$Impl;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 113
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    .line 114
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->cancel()V

    .line 186
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->end()V

    .line 194
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFloatValue()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFraction()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedIntValue()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getDuration()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->isRunning()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setDuration(I)V

    .line 182
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setFloatValues(FF)V

    .line 174
    return-void
.end method

.method public setIntValues(II)V
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setIntValues(II)V

    .line 166
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 126
    return-void
.end method

.method public setListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompat$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat$2;-><init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    goto :goto_0
.end method

.method public setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompat$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->start()V

    .line 118
    return-void
.end method
