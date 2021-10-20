.class public Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsStarted:Z

.field private mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private final mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 115
    move-object v1, v0

    new-instance v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;-><init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    iput-object v2, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    .line 44
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method private onAnimationsEnded()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 82
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v3, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v2, v3

    .line 89
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 92
    goto :goto_0
.end method

.method public play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v2, :cond_0

    .line 49
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 51
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 58
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 59
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v3, :cond_0

    .line 96
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    .line 98
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v2, :cond_0

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-nez v2, :cond_0

    .line 110
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 112
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    if-eqz v3, :cond_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v2, v3

    .line 65
    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 66
    move-object v3, v2

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 68
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_2

    .line 69
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 71
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v3, :cond_3

    .line 72
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mProxyListener:Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 74
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 75
    goto :goto_1

    .line 77
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    .line 78
    goto :goto_0
.end method
