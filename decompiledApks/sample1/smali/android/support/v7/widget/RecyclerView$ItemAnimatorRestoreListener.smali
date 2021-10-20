.class Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 9534
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V
    .locals 5

    .prologue
    .line 9534
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 9538
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9539
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 9540
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9544
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9545
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$6100(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9546
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->access$6200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9547
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9550
    :cond_1
    return-void
.end method
