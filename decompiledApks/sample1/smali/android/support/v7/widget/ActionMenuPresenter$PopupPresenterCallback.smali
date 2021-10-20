.class Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4

    .prologue
    .line 748
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V
    .locals 5

    .prologue
    .line 748
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 7

    .prologue
    .line 761
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_0

    .line 762
    move-object v4, v1

    check-cast v4, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/SubMenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 764
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuPresenter;->getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object v4

    move-object v3, v4

    .line 765
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 766
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 768
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 5

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 756
    :goto_0
    return v0

    .line 754
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v4, v1

    check-cast v4, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 755
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object v3

    move-object v2, v3

    .line 756
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
