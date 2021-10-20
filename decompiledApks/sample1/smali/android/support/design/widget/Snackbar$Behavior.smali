.class final Landroid/support/design/widget/Snackbar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior",
        "<",
        "Landroid/support/design/widget/Snackbar$SnackbarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 4

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$Behavior;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 814
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move v0, v2

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/Snackbar$SnackbarLayout;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 822
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 834
    :cond_0
    :goto_0
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    move v0, v4

    return v0

    .line 825
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/Snackbar$Behavior;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v5}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/SnackbarManager;->cancelTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 826
    goto :goto_0

    .line 829
    :pswitch_2
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/Snackbar$Behavior;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v5}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/SnackbarManager;->restoreTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/Snackbar$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/Snackbar$SnackbarLayout;Landroid/view/MotionEvent;)Z

    move-result v4

    move v0, v4

    return v0
.end method
