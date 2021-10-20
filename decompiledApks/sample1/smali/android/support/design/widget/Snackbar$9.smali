.class Landroid/support/design/widget/Snackbar$9;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 5

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/Snackbar$9;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/Snackbar$9;->val$event:I

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$9;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/Snackbar$9;->val$event:I

    invoke-static {v2, v3}, Landroid/support/design/widget/Snackbar;->access$300(Landroid/support/design/widget/Snackbar;I)V

    .line 568
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$9;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->animateChildrenOut(II)V

    .line 563
    return-void
.end method
