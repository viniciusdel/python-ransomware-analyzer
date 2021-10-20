.class Landroid/support/v7/widget/DefaultItemAnimator$8;
.super Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/widget/DefaultItemAnimator$8;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 379
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 380
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 381
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 382
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 383
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 384
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 385
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$8;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 375
    return-void
.end method
