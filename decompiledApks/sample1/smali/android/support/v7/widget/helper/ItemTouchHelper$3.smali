.class Landroid/support/v7/widget/helper/ItemTouchHelper$3;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 20

    .prologue
    .line 593
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v11, v0

    move v12, v9

    iput v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    move-object v11, v0

    move-object v12, v10

    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 597
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v2, :cond_0

    .line 618
    :goto_0
    return-void

    .line 600
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v2, :cond_3

    .line 602
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 615
    :cond_1
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1600(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 616
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/View;)V

    .line 618
    :cond_2
    goto :goto_0

    .line 606
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 607
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 608
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v2, :cond_1

    .line 611
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1500(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    goto :goto_1
.end method
