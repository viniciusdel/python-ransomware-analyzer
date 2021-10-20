.class Landroid/support/design/widget/StateListAnimator$1;
.super Ljava/lang/Object;
.source "StateListAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/StateListAnimator;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    invoke-static {v2}, Landroid/support/design/widget/StateListAnimator;->access$000(Landroid/support/design/widget/StateListAnimator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 38
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/StateListAnimator;->access$002(Landroid/support/design/widget/StateListAnimator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 40
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
