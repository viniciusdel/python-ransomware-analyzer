.class Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ValueAnimatorCompatImplHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;

.field final synthetic val$listener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationCancel()V

    .line 73
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 68
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationStart()V

    .line 63
    return-void
.end method
