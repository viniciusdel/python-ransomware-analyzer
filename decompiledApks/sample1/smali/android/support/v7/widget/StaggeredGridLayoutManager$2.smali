.class Landroid/support/v7/widget/StaggeredGridLayoutManager$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1860
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 1863
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$400(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)I

    move-result v3

    move v2, v3

    .line 1864
    move v3, v2

    if-nez v3, :cond_0

    .line 1865
    const/4 v3, 0x0

    move-object v0, v3

    .line 1870
    :goto_0
    return-object v0

    .line 1867
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$500(Landroid/support/v7/widget/StaggeredGridLayoutManager;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1868
    new-instance v3, Landroid/graphics/PointF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v3

    goto :goto_0

    .line 1870
    :cond_1
    new-instance v3, Landroid/graphics/PointF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move v6, v2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v3

    goto :goto_0
.end method
