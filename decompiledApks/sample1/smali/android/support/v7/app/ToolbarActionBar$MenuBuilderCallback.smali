.class final Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .locals 4

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V
    .locals 5

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    .line 634
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 635
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$300(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v2

    const/16 v3, 0x6c

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v2, v3, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v2

    const/16 v3, 0x6c

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method
