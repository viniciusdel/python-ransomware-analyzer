.class Landroid/support/v7/widget/ActionBarOverlayLayout$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$002(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 101
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$102(Landroid/support/v7/widget/ActionBarOverlayLayout;Z)Z

    move-result v2

    .line 102
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$002(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 95
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$102(Landroid/support/v7/widget/ActionBarOverlayLayout;Z)Z

    move-result v2

    .line 96
    return-void
.end method
