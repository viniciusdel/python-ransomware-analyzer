.class Landroid/support/v7/widget/helper/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V
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
    .line 1236
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 7

    .prologue
    .line 1239
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1600(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1240
    move v4, v2

    move v0, v4

    .line 1250
    :goto_0
    return v0

    .line 1242
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$2300(Landroid/support/v7/widget/helper/ItemTouchHelper;)I

    move-result v4

    move v3, v4

    .line 1243
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1244
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1600(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 1245
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move v5, v3

    invoke-static {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$2302(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I

    move-result v4

    .line 1247
    :cond_1
    move v4, v2

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1248
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 1250
    :cond_2
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
