.class Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;
.super Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplEclairMr1.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xc8

.field private static final HANDLER_DELAY:I = 0xa

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAnimatedFraction:F

.field private mDuration:I

.field private final mFloatValues:[F

.field private final mIntValues:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRunning:Z

.field private mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    .line 39
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    .line 41
    move-object v1, v0

    const/16 v2, 0xc8

    iput v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    .line 185
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;)V

    iput-object v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;)V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->update()V

    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    .line 156
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v4, :cond_1

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    sub-long/2addr v4, v6

    move-wide v1, v4

    .line 159
    move-wide v4, v1

    long-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v3, v4

    .line 160
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    move v6, v3

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    :goto_0
    iput v5, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    .line 165
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    if-eqz v4, :cond_0

    .line 166
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v4}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 170
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 171
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 173
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v4, :cond_1

    .line 174
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v4}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 179
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v4, :cond_2

    .line 181
    sget-object v4, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 183
    :cond_2
    return-void

    .line 160
    :cond_3
    move v5, v3

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 119
    sget-object v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v1, :cond_0

    .line 122
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationCancel()V

    .line 124
    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v1, :cond_1

    .line 134
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 135
    sget-object v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    .line 140
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    if-eqz v1, :cond_0

    .line 141
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v1, :cond_1

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 148
    :cond_1
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->getAnimatedFraction()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    move v0, v1

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->getAnimatedFraction()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-long v1, v1

    move-wide v0, v1

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    move v0, v1

    return v0
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    .line 114
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 103
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 104
    return-void
.end method

.method public setIntValues(II)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 92
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 93
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    return-void
.end method

.method public setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    .line 82
    return-void
.end method

.method public setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    .line 87
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    .line 56
    move-object v1, v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    :cond_1
    move-object v1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    .line 60
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 62
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v1, :cond_2

    .line 63
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationStart()V

    .line 66
    :cond_2
    sget-object v1, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 67
    goto :goto_0
.end method
