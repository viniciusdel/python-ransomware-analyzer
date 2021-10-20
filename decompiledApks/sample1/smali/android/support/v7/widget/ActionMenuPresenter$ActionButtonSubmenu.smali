.class Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroid/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 15

    .prologue
    .line 715
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 716
    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    invoke-direct/range {v9 .. v14}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 718
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 720
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v9

    .line 721
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v9

    if-nez v9, :cond_0

    .line 723
    move-object v9, v0

    move-object v10, v1

    invoke-static {v10}, Landroid/support/v7/widget/ActionMenuPresenter;->access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v10

    if-nez v10, :cond_2

    move-object v10, v1

    invoke-static {v10}, Landroid/support/v7/widget/ActionMenuPresenter;->access$700(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    :goto_0
    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 726
    :cond_0
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 728
    const/4 v9, 0x0

    move v5, v9

    .line 729
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I

    move-result v9

    move v6, v9

    .line 730
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_1

    .line 731
    move-object v9, v3

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    move-object v8, v9

    .line 732
    move-object v9, v8

    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v8

    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 733
    const/4 v9, 0x1

    move v5, v9

    .line 737
    :cond_1
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 738
    return-void

    .line 723
    :cond_2
    move-object v10, v1

    invoke-static {v10}, Landroid/support/v7/widget/ActionMenuPresenter;->access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v10

    goto :goto_0

    .line 730
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    .line 743
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->access$802(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v1

    .line 744
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 745
    return-void
.end method
