.class Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 1941
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
    .locals 5

    .prologue
    .line 1941
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5

    .prologue
    .line 2032
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v3, v3, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v3, :cond_0

    .line 2033
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v3, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v3}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2036
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2037
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v4}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2038
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2040
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2041
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2042
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2043
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2045
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 8

    .prologue
    .line 2003
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v4}, Landroid/support/v7/widget/Toolbar;->access$200(Landroid/support/v7/widget/Toolbar;)V

    .line 2004
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v4}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq v4, v5, :cond_0

    .line 2005
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2007
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2008
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2009
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq v4, v5, :cond_1

    .line 2010
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 2011
    move-object v4, v3

    const v5, 0x800003

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-static {v6}, Landroid/support/v7/widget/Toolbar;->access$400(Landroid/support/v7/widget/Toolbar;)I

    move-result v6

    const/16 v7, 0x70

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2012
    move-object v4, v3

    const/4 v5, 0x2

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2013
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2014
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2017
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2018
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2019
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2021
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v4, v4, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v4, :cond_2

    .line 2022
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v4, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v4}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2025
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 1998
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 2050
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 3

    .prologue
    .line 1956
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 1948
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    .line 1949
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v3

    .line 1951
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1952
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 1994
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 2060
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2055
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 3

    .prologue
    .line 1989
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .prologue
    .line 1985
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 9

    .prologue
    .line 1962
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v6, :cond_1

    .line 1963
    const/4 v6, 0x0

    move v2, v6

    .line 1965
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_0

    .line 1966
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v6

    move v3, v6

    .line 1967
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 1968
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 1969
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-ne v6, v7, :cond_2

    .line 1970
    const/4 v6, 0x1

    move v2, v6

    .line 1976
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    .line 1978
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v6

    .line 1981
    :cond_1
    return-void

    .line 1967
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
