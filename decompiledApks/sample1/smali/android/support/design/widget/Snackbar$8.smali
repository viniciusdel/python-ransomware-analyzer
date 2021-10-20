.class Landroid/support/design/widget/Snackbar$8;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 534
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 538
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$Callback;->onShown(Landroid/support/design/widget/Snackbar;)V

    .line 540
    :cond_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v3}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 541
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
