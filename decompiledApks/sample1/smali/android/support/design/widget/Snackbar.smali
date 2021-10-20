.class public final Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$Behavior;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$Duration;,
        Landroid/support/design/widget/Snackbar$Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SHOW:I

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mCallback:Landroid/support/design/widget/Snackbar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field private final mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/Snackbar$1;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/design/widget/Snackbar$1;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 421
    move-object v3, v0

    new-instance v4, Landroid/support/design/widget/Snackbar$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/Snackbar$3;-><init>(Landroid/support/design/widget/Snackbar;)V

    iput-object v4, v3, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 179
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    .line 180
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    .line 182
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 184
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 185
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/design/R$layout;->design_layout_snackbar:I

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iput-object v4, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/Snackbar;I)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/Snackbar;->dispatchDismiss(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/Snackbar;I)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/Snackbar;->onViewHidden(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/design/widget/Snackbar;)V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    move-object v0, v1

    return-object v0
.end method

.method private animateViewIn()V
    .locals 7

    .prologue
    .line 508
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 509
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 510
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/Snackbar$7;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/Snackbar$7;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/design/R$anim;->design_snackbar_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v1, v2

    .line 532
    move-object v2, v1

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 533
    move-object v2, v1

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    move-object v2, v1

    new-instance v3, Landroid/support/design/widget/Snackbar$8;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/Snackbar$8;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateViewOut(I)V
    .locals 9

    .prologue
    .line 554
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 555
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    new-instance v4, Landroid/support/design/widget/Snackbar$9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/Snackbar$9;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 588
    :goto_0
    return-void

    .line 571
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    move-object v2, v3

    .line 572
    move-object v3, v2

    sget-object v4, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 573
    move-object v3, v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 574
    move-object v3, v2

    new-instance v4, Landroid/support/design/widget/Snackbar$10;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/Snackbar$10;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 586
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dispatchDismiss(I)V
    .locals 5

    .prologue
    .line 394
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    .line 395
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 240
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 242
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, v3

    .line 262
    :goto_0
    return-object v0

    .line 243
    :cond_1
    move-object v3, v0

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 244
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020002

    if-ne v3, v4, :cond_2

    .line 247
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, v3

    goto :goto_0

    .line 250
    :cond_2
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    .line 254
    :cond_3
    move-object v3, v0

    if-eqz v3, :cond_4

    .line 256
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 257
    move-object v3, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    :goto_1
    move-object v0, v3

    .line 259
    :cond_4
    move-object v3, v0

    if-nez v3, :cond_0

    .line 262
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 257
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isBeingDragged()Z
    .locals 5

    .prologue
    .line 616
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v1, v4

    .line 618
    move-object v4, v1

    instance-of v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_1

    .line 619
    move-object v4, v1

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v2, v4

    .line 620
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    move-object v3, v4

    .line 622
    move-object v4, v3

    instance-of v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;

    if-eqz v4, :cond_1

    .line 623
    move-object v4, v3

    check-cast v4, Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->getDragState()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 627
    :goto_1
    return v0

    .line 623
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 627
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public static make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v4, Landroid/support/design/widget/Snackbar;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-static {v6}, Landroid/support/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v4

    .line 210
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    move-result-object v4

    .line 211
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/Snackbar;

    move-result-object v4

    .line 212
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method private onViewHidden(I)V
    .locals 6

    .prologue
    .line 600
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 602
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    if-eqz v3, :cond_0

    .line 603
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/Snackbar$Callback;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    .line 606
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    .line 607
    move-object v3, v2

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 608
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 610
    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/support/design/widget/Snackbar;->dispatchDismiss(I)V

    .line 391
    return-void
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/Snackbar;->mDuration:I

    move v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v0, v1

    return-object v0
.end method

.method final hideView(I)V
    .locals 4

    .prologue
    .line 591
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/Snackbar;->isBeingDragged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/Snackbar;->onViewHidden(I)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/Snackbar;->animateViewOut(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 3

    .prologue
    .line 410
    move-object v0, p0

    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 3

    .prologue
    .line 418
    move-object v0, p0

    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v4

    move-object v3, v4

    .line 286
    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 287
    :cond_0
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :goto_0
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 290
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    move-object v4, v3

    new-instance v5, Landroid/support/design/widget/Snackbar$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/design/widget/Snackbar$2;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Landroid/support/design/widget/Snackbar;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v3

    move-object v2, v3

    .line 322
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Landroid/support/design/widget/Snackbar;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v3

    move-object v2, v3

    .line 311
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 312
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    .line 403
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setDuration(I)Landroid/support/design/widget/Snackbar;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/Snackbar;->mDuration:I

    .line 358
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setText(I)Landroid/support/design/widget/Snackbar;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v3

    move-object v2, v3

    .line 334
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/Snackbar;->mDuration:I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 384
    return-void
.end method

.method final showView()V
    .locals 8

    .prologue
    .line 434
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 435
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v1, v3

    .line 437
    move-object v3, v1

    instance-of v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v3, :cond_0

    .line 440
    new-instance v3, Landroid/support/design/widget/Snackbar$Behavior;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/Snackbar$Behavior;-><init>(Landroid/support/design/widget/Snackbar;)V

    move-object v2, v3

    .line 441
    move-object v3, v2

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 442
    move-object v3, v2

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 443
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$Behavior;->setSwipeDirection(I)V

    .line 444
    move-object v3, v2

    new-instance v4, Landroid/support/design/widget/Snackbar$4;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/Snackbar$4;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 465
    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 468
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 471
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v4, Landroid/support/design/widget/Snackbar$5;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/Snackbar$5;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V

    .line 492
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v4, Landroid/support/design/widget/Snackbar$6;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/Snackbar$6;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    goto :goto_0
.end method
