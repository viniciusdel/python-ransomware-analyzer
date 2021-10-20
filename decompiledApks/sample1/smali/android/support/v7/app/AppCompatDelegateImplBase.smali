.class abstract Landroid/support/v7/app/AppCompatDelegateImplBase;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplBase$1;,
        Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;,
        Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
    }
.end annotation


# instance fields
.field mActionBar:Landroid/support/v7/app/ActionBar;

.field final mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field mThemeRead:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 63
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 64
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 65
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    .line 67
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 68
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-eqz v4, :cond_0

    .line 69
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "AppCompat has already installed itself into the Window"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_0
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 74
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 75
    return-void
.end method


# virtual methods
.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 124
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 125
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 126
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v3

    .line 129
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 130
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    move-object v1, v3

    .line 132
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/support/v7/app/AppCompatDelegateImplBase$1;)V

    move-object v0, v1

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 99
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 100
    move-object v1, v0

    new-instance v2, Landroid/support/v7/view/SupportMenuInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 103
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    move-object v0, v1

    return-object v0

    .line 100
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 88
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object v0, v1

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 211
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    move v0, v1

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    .line 179
    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object v0, v1

    return-object v0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 203
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method abstract startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    move-object v0, v2

    return-object v0
.end method
