.class public abstract Landroid/support/v7/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Landroid/support/v7/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 59
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 60
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 61
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 62
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 130
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 131
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 134
    return-void
.end method

.method public abstract bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView$ItemView;
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v0, v2

    return-object v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 144
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v0, v1

    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/BaseMenuPresenter;->mId:I

    move v0, v1

    return v0
.end method

.method public getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    instance-of v5, v5, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_0

    .line 178
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v4, v5

    .line 182
    :goto_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/view/menu/BaseMenuPresenter;->bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V

    .line 183
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    return-object v0

    .line 180
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView$ItemView;

    move-result-object v5

    move-object v4, v5

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-nez v2, :cond_0

    .line 74
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuView;

    iput-object v3, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 75
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v2, v3}, Landroid/support/v7/view/menu/MenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 76
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 79
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object v0, v2

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 67
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 69
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_0

    .line 207
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v2

    move v0, v2

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 149
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mId:I

    .line 236
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 15

    .prologue
    .line 86
    move-object v0, p0

    move/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v11, Landroid/view/ViewGroup;

    move-object v2, v11

    .line 87
    move-object v11, v2

    if-nez v11, :cond_0

    .line 120
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v11, 0x0

    move v3, v11

    .line 90
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v11, :cond_5

    .line 91
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 92
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v11

    move-object v4, v11

    .line 93
    move-object v11, v4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v5, v11

    .line 94
    const/4 v11, 0x0

    move v6, v11

    :goto_1
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_5

    .line 95
    move-object v11, v4

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v7, v11

    .line 96
    move-object v11, v0

    move v12, v3

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 97
    move-object v11, v2

    move v12, v3

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 98
    move-object v11, v8

    instance-of v11, v11, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v11, :cond_4

    move-object v11, v8

    check-cast v11, Landroid/support/v7/view/menu/MenuView$ItemView;

    invoke-interface {v11}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v11

    :goto_2
    move-object v9, v11

    .line 100
    move-object v11, v0

    move-object v12, v7

    move-object v13, v8

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    .line 101
    move-object v11, v7

    move-object v12, v9

    if-eq v11, v12, :cond_1

    .line 103
    move-object v11, v10

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setPressed(Z)V

    .line 104
    move-object v11, v10

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    .line 106
    :cond_1
    move-object v11, v10

    move-object v12, v8

    if-eq v11, v12, :cond_2

    .line 107
    move-object v11, v0

    move-object v12, v10

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 109
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 115
    :cond_5
    :goto_3
    move v11, v3

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 116
    move-object v11, v0

    move-object v12, v2

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 120
    :cond_6
    goto/16 :goto_0
.end method
