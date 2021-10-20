.class Landroid/support/design/widget/Snackbar$3;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
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
    .line 421
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$3;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 8

    .prologue
    .line 429
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/design/widget/Snackbar;->access$100()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Landroid/support/design/widget/Snackbar;->access$100()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/Snackbar$3;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    .line 430
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 424
    move-object v0, p0

    invoke-static {}, Landroid/support/design/widget/Snackbar;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Landroid/support/design/widget/Snackbar;->access$100()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/Snackbar$3;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 425
    return-void
.end method
