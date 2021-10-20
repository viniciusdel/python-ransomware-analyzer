.class Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimateOnHWLayerIfNeededListener"
.end annotation


# instance fields
.field private mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShouldRunOnHWLayer:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 418
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    .line 419
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 420
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 422
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 426
    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 418
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    .line 419
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 420
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 430
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    .line 434
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 435
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)Landroid/view/View;
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    if-eqz v2, :cond_0

    .line 460
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 467
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v2, :cond_1

    .line 468
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 470
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v2, :cond_0

    .line 475
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 477
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 441
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 442
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    if-eqz v2, :cond_0

    .line 443
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 451
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v2, :cond_1

    .line 452
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mOrignalListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 454
    :cond_1
    return-void
.end method
