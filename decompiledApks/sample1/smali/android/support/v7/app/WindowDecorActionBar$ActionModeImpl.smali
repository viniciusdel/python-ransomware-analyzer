.class public Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/support/v7/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 9

    .prologue
    .line 939
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 940
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 941
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 942
    move-object v4, v0

    new-instance v5, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 944
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 945
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 6

    .prologue
    .line 1006
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1008
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    move v1, v3

    .line 1010
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move v3, v1

    move v0, v3

    return v0

    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move-object v3, v2

    throw v3
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 959
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    move-object v2, v0

    if-eq v1, v2, :cond_0

    .line 986
    :goto_0
    return-void

    .line 968
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$500(Landroid/support/v7/app/WindowDecorActionBar;)Z

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$600(Landroid/support/v7/app/WindowDecorActionBar;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$700(ZZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 971
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    move-object v2, v0

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    .line 972
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 976
    :goto_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 977
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 980
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->closeMode()V

    .line 981
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$900(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 983
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$400(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-boolean v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 985
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    .line 986
    goto :goto_0

    .line 974
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1063
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 954
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 949
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1047
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1042
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invalidate()V
    .locals 5

    .prologue
    .line 990
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 997
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 999
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v2, v3, v4}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1001
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1003
    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    move-object v2, v1

    throw v2
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 1058
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 1075
    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 0

    .prologue
    .line 1091
    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 1067
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v3, :cond_0

    .line 1068
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .line 1070
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 3

    .prologue
    .line 1094
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v2, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1097
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1098
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    move-result v2

    .line 1099
    goto :goto_0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 7

    .prologue
    .line 1078
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v2, :cond_0

    .line 1079
    const/4 v2, 0x0

    move v0, v2

    .line 1087
    :goto_0
    return v0

    .line 1082
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1083
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1086
    :cond_1
    new-instance v2, Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    .line 1087
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1016
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1017
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1018
    return-void
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 1037
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1038
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1022
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1023
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 1032
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v3}, Landroid/support/v7/app/WindowDecorActionBar;->access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1033
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1027
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1028
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 1052
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1053
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-static {v2}, Landroid/support/v7/app/WindowDecorActionBar;->access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1054
    return-void
.end method
