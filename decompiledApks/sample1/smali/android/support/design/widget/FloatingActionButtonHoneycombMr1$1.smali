.class Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    move-result v2

    .line 76
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    move-result v2

    .line 81
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 85
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    move-result v2

    .line 70
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method
