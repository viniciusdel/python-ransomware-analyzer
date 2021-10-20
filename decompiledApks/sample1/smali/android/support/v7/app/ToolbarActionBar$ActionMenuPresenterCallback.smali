.class final Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .locals 4

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V
    .locals 5

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v3, :cond_0

    .line 605
    :goto_0
    return-void

    .line 599
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 600
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v3}, Landroid/support/v7/app/ToolbarActionBar;->access$300(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v7/widget/DecorToolbar;->dismissPopupMenus()V

    .line 601
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v3}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 602
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v3}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v3

    const/16 v4, 0x6c

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 604
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 605
    goto :goto_0
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 5

    .prologue
    .line 586
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 587
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v2}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v2

    const/16 v3, 0x6c

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    .line 588
    const/4 v2, 0x1

    move v0, v2

    .line 590
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
