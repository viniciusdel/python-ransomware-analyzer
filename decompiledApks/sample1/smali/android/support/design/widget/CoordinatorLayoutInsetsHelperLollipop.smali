.class Landroid/support/design/widget/CoordinatorLayoutInsetsHelperLollipop;
.super Ljava/lang/Object;
.source "CoordinatorLayoutInsetsHelperLollipop.java"

# interfaces
.implements Landroid/support/design/widget/CoordinatorLayoutInsetsHelper;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setupForWindowInsets(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 30
    move-object v3, v1

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    :cond_0
    return-void
.end method
