.class public final Landroid/support/v7/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 37
    new-instance v2, Landroid/support/v7/view/menu/MenuWrapperICS;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V

    move-object v0, v2

    return-object v0

    .line 39
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 44
    new-instance v2, Landroid/support/v7/view/menu/MenuItemWrapperJB;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    move-object v0, v2

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 46
    new-instance v2, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    move-object v0, v2

    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 53
    new-instance v2, Landroid/support/v7/view/menu/SubMenuWrapperICS;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V

    move-object v0, v2

    return-object v0

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
