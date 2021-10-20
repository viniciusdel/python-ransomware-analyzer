.class Landroid/support/v7/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
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
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$200(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$302(Landroid/support/v7/widget/RecyclerView;Z)Z

    move-result v1

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$1;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    .line 283
    goto :goto_0
.end method
