.class Landroid/support/v7/widget/helper/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;->postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic val$anim:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 6

    .prologue
    .line 657
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 660
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 663
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    move-object v1, v2

    .line 667
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1800(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 669
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->val$anim:Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 674
    :cond_1
    :goto_0
    return-void

    .line 671
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$4;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0
.end method
