.class public Landroid/support/v7/view/menu/SubMenuBuilder;
.super Landroid/support/v7/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 40
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 41
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    :goto_0
    move v1, v2

    .line 136
    move v2, v1

    if-nez v2, :cond_1

    .line 137
    const/4 v2, 0x0

    move-object v0, v2

    .line 139
    :goto_1
    return-object v0

    .line 135
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 139
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-super {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 75
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 105
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 100
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 115
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 110
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 120
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 95
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    .line 90
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setQwertyMode(Z)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 47
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 57
    return-void
.end method
