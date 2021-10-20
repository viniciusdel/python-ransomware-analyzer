.class Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroid/support/v7/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 5

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    .line 545
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 546
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 7

    .prologue
    .line 560
    move-object v0, p0

    move v1, p1

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 568
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 562
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v3}, Landroid/support/v7/app/ToolbarActionBar;->access$300(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v7/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    move-object v2, v3

    .line 563
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v7/app/ToolbarActionBar;->access$400(Landroid/support/v7/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 9

    .prologue
    .line 550
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/support/v7/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v4, v5

    .line 551
    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v5}, Landroid/support/v7/app/ToolbarActionBar;->access$200(Landroid/support/v7/app/ToolbarActionBar;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v5}, Landroid/support/v7/app/ToolbarActionBar;->access$300(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v5

    invoke-interface {v5}, Landroid/support/v7/widget/DecorToolbar;->setMenuPrepared()V

    .line 553
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v7/app/ToolbarActionBar;->access$202(Landroid/support/v7/app/ToolbarActionBar;Z)Z

    move-result v5

    .line 555
    :cond_0
    move v5, v4

    move v0, v5

    return v0
.end method
