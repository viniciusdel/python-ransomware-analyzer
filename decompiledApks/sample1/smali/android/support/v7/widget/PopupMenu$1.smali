.class Landroid/support/v7/widget/PopupMenu$1;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-static {v1}, Landroid/support/v7/widget/PopupMenu;->access$000(Landroid/support/v7/widget/PopupMenu;)Landroid/support/v7/view/menu/MenuPopupHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 161
    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->dismiss()V

    .line 167
    const/4 v1, 0x1

    move v0, v1

    return v0
.end method
