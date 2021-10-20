.class final Landroid/support/v7/widget/OrientationHelper$1;
.super Landroid/support/v7/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 235
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 219
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 227
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v2, v3

    .line 242
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public getEnd()I
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTotalSpace()I
    .locals 3

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 254
    return-void
.end method

.method public offsetChildren(I)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 208
    return-void
.end method
