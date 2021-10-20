.class Landroid/support/v7/widget/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$200(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    .line 116
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$400(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$400(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$300(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$002(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 119
    return-void
.end method
