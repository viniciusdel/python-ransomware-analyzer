.class Landroid/support/v7/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 586
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 587
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 10

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    move-object v4, v5

    .line 626
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 627
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 628
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called attach on a child which is not detached: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 636
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView;->access$1400(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 637
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 9

    .prologue
    .line 641
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 642
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 643
    move-object v4, v2

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 644
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 645
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 646
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "called detach on an already detached child "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 652
    :cond_0
    move-object v4, v3

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 655
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v7/widget/RecyclerView;->access$1500(Landroid/support/v7/widget/RecyclerView;I)V

    .line 656
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 605
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 660
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 661
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 662
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1600(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 664
    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 669
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 670
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1700(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 672
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 6

    .prologue
    .line 610
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$5;->getChildCount()I

    move-result v3

    move v1, v3

    .line 611
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 612
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$1300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 615
    return-void
.end method

.method public removeViewAt(I)V
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 597
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 598
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$1300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 600
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 601
    return-void
.end method
