.class Landroid/support/v7/view/menu/SubMenuWrapperICS;
.super Landroid/support/v7/view/menu/MenuWrapperICS;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V

    .line 34
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportSubMenu;->clearHeader()V

    .line 74
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/internal/view/SupportSubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/SubMenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/internal/view/SupportSubMenu;

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getWrappedObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 56
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v2

    .line 62
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 44
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 50
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    move-result-object v2

    .line 68
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 79
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuWrapperICS;->getWrappedObject()Landroid/support/v4/internal/view/SupportSubMenu;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportSubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v2

    .line 85
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
