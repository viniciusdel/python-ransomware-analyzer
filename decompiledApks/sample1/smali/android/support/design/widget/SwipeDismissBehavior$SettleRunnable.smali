.class Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mDismiss:Z

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 353
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 354
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    .line 355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v1}, Landroid/support/design/widget/SwipeDismissBehavior;->access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v1}, Landroid/support/design/widget/SwipeDismissBehavior;->access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v1}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v1}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method
