.class public Landroid/support/design/internal/NavigationSubMenu;
.super Landroid/support/v7/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 8

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 39
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationSubMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 40
    return-void
.end method
