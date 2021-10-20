.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field private mRunningAnimation:Landroid/view/animation/Animation;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 31
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 34
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/StateListAnimator$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v2, v1, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 175
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/StateListAnimator;)Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/widget/StateListAnimator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    move-object v0, v2

    return-object v0
.end method

.method private cancel()V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    .line 147
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 148
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-ne v2, v3, :cond_0

    .line 149
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 151
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 153
    :cond_1
    return-void
.end method

.method private clearTarget()V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    .line 96
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 97
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 98
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/StateListAnimator$Tuple;

    iget-object v5, v5, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    move-object v4, v5

    .line 99
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    move-object v6, v4

    if-ne v5, v6, :cond_0

    .line 100
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 104
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 105
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 106
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 139
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 140
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 141
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public addState([ILandroid/view/animation/Animation;)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/support/design/widget/StateListAnimator$Tuple;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/StateListAnimator$1;)V

    move-object v3, v4

    .line 62
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 64
    return-void
.end method

.method getRunningAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    move-object v0, v1

    return-object v0
.end method

.method getTarget()Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method getTuples()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 169
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-ne v2, v3, :cond_0

    .line 170
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 173
    :cond_0
    return-void
.end method

.method setState([I)V
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    .line 113
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 114
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 115
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/StateListAnimator$Tuple;

    move-object v5, v6

    .line 116
    move-object v6, v5

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    move-object v6, v5

    move-object v2, v6

    .line 121
    :cond_0
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v6, v7, :cond_2

    .line 134
    :goto_1
    return-void

    .line 114
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v6, :cond_3

    .line 125
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 128
    :cond_3
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 130
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    .line 131
    move-object v6, v2

    if-eqz v6, :cond_4

    move-object v6, v4

    if-eqz v6, :cond_4

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 132
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    .line 134
    :cond_4
    goto :goto_1
.end method

.method setTarget(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 83
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 87
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/StateListAnimator;->clearTarget()V

    .line 89
    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 90
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 92
    :cond_2
    goto :goto_0
.end method
