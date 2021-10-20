.class Landroid/support/design/widget/Snackbar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->animateViewIn()V
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
    .line 514
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 524
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$Callback;->onShown(Landroid/support/design/widget/Snackbar;)V

    .line 526
    :cond_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v3}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 527
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v2

    const/16 v3, 0x46

    const/16 v4, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->animateChildrenIn(II)V

    .line 519
    return-void
.end method
