.class Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.super Landroid/support/v7/view/WindowCallbackWrapper;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackBase"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    .line 219
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 220
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_0

    .line 239
    const/4 v3, 0x0

    move v0, v3

    .line 241
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    .line 280
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    .line 281
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    .line 287
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onPanelClosed(ILandroid/view/Menu;)V

    .line 288
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 10

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v3

    instance-of v6, v6, Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Landroid/support/v7/view/menu/MenuBuilder;

    :goto_0
    move-object v4, v6

    .line 254
    move v6, v1

    if-nez v6, :cond_1

    move-object v6, v4

    if-nez v6, :cond_1

    .line 257
    const/4 v6, 0x0

    move v0, v6

    .line 274
    :goto_1
    return v0

    .line 252
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 264
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 265
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 268
    :cond_2
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Landroid/support/v7/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v6

    move v5, v6

    .line 270
    move-object v6, v4

    if-eqz v6, :cond_3

    .line 271
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 274
    :cond_3
    move v6, v5

    move v0, v6

    goto :goto_1
.end method
