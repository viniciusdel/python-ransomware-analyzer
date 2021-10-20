.class Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1788
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 5

    .prologue
    .line 1788
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1790
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v2}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v1, v2, :cond_0

    .line 1793
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->access$1100(Landroid/support/v7/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1794
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1796
    :cond_0
    return-void
.end method
