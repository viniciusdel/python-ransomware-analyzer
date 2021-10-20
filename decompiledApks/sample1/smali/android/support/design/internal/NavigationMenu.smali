.class public Landroid/support/design/internal/NavigationMenu;
.super Landroid/support/v7/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 13

    .prologue
    .line 39
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/design/internal/NavigationMenu;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v7

    .line 40
    new-instance v7, Landroid/support/design/internal/NavigationSubMenu;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/internal/NavigationMenu;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Landroid/support/design/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/MenuItemImpl;)V

    move-object v6, v7

    .line 41
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 42
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method
