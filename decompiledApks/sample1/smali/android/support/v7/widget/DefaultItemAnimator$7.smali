.class Landroid/support/v7/widget/DefaultItemAnimator$7;
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

.field final synthetic val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 358
    move-object v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 359
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 360
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 361
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 362
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 363
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 364
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 353
    return-void
.end method
