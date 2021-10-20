.class Landroid/support/v7/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 119
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v2, v3

    .line 120
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    move-object v7, v2

    iget v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toX:I

    move-object v8, v2

    iget v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-static/range {v3 .. v8}, Landroid/support/v7/widget/DefaultItemAnimator;->access$000(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-static {v3}, Landroid/support/v7/widget/DefaultItemAnimator;->access$100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 125
    return-void
.end method
