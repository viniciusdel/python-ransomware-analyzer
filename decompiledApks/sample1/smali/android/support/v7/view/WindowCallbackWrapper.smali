.class public Landroid/support/v7/view/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field final mWrapped:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v1

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Window callback may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 161
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 156
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 121
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 111
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 126
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 131
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 116
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/WindowCallbackWrapper;->mWrapped:Landroid/view/Window$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
