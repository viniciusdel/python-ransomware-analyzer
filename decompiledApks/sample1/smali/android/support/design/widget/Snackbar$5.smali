.class Landroid/support/design/widget/Snackbar$5;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 4

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$5;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$5;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->isShownOrQueued()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    invoke-static {}, Landroid/support/design/widget/Snackbar;->access$100()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/Snackbar$5$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/Snackbar$5$1;-><init>(Landroid/support/design/widget/Snackbar$5;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 489
    :cond_0
    return-void
.end method
