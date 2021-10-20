.class Landroid/support/v7/widget/helper/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$000(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    .line 243
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 245
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 246
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$1;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 248
    :cond_1
    return-void
.end method
