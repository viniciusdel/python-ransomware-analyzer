.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_SUPPORT_ACTION_BAR:I = 0x6c

.field public static final FEATURE_SUPPORT_ACTION_BAR_OVERLAY:I = 0x6d

.field static final TAG:Ljava/lang/String; = "AppCompatDelegate"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v4

    .line 132
    move v4, v3

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 133
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV23;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    move-object v0, v4

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_0
    move v4, v3

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 135
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV14;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    move-object v0, v4

    goto :goto_0

    .line 136
    :cond_1
    move v4, v3

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 137
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV11;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    move-object v0, v4

    goto :goto_0

    .line 139
    :cond_2
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method

.method public abstract hasWindowFeature(I)Z
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isHandleNativeActionModesEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setHandleNativeActionModesEnabled(Z)V
.end method

.method public abstract setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method
