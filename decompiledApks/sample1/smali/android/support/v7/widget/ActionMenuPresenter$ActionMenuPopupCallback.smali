.class Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4

    .prologue
    .line 788
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V
    .locals 5

    .prologue
    .line 788
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 791
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$800(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$800(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
