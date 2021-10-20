.class public Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10209
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10210
    return-void
.end method


# virtual methods
.method public setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5

    .prologue
    .line 10220
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 6

    .prologue
    .line 10235
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v4

    .line 10236
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 10237
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 10238
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 10239
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 10240
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method
