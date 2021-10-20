.class Landroid/support/v7/widget/DefaultItemAnimator$6;
.super Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 8

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaX:I

    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaY:I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaX:I

    if-eqz v2, :cond_0

    .line 293
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 295
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v2, :cond_1

    .line 296
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 298
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 302
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 303
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$1100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 304
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 305
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 289
    return-void
.end method
