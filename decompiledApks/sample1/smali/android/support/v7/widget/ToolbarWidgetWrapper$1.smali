.class Landroid/support/v7/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Landroid/support/v7/view/menu/ActionMenuItem;

.field final synthetic this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;)V
    .locals 12

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 189
    move-object v2, v0

    new-instance v3, Landroid/support/v7/view/menu/ActionMenuItem;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v5}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x102002c

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v10}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$100(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->mNavItem:Landroid/support/v7/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$200(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$300(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$200(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;->mNavItem:Landroid/support/v7/view/menu/ActionMenuItem;

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 196
    :cond_0
    return-void
.end method
