.class final Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    .line 2530
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 2533
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2534
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2536
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 2540
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewRemoved(Landroid/view/View;)V

    .line 2542
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2543
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2545
    :cond_0
    return-void
.end method
