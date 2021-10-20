.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuTextItem"
.end annotation


# instance fields
.field private final mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;


# direct methods
.method private constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 600
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 601
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 602
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method


# virtual methods
.method public getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 605
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method
