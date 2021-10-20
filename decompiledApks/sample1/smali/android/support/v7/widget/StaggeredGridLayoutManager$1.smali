.class Landroid/support/v7/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    .line 201
    return-void
.end method
