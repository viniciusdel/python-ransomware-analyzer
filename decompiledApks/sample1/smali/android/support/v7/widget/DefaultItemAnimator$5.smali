.class Landroid/support/v7/widget/DefaultItemAnimator$5;
.super Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$5;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$5;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 235
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$5;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 240
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$5;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 241
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$5;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$900(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 242
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$5;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$5;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$5;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 231
    return-void
.end method
