.class Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 296
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 297
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$000(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$000(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    move-object v0, v1

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$100(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$100(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-static {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$200(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    move-object v1, v2

    .line 312
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 314
    :goto_1
    return v0

    .line 312
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
