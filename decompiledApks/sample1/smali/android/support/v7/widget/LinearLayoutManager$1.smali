.class Landroid/support/v7/widget/LinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/LinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/LinearLayoutManager$1;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 428
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager$1;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
