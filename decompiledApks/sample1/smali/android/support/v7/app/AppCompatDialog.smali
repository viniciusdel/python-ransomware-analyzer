.class public Landroid/support/v7/app/AppCompatDialog;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroid/support/v7/app/AppCompatCallback;


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v7/app/AppCompatDialog;->getThemeResId(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 54
    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;I)I
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 151
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->dialogTheme:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 152
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v1, v3

    .line 154
    :cond_0
    move v3, v1

    move v0, v3

    return v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDialog;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v1, :cond_0

    .line 142
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDialog;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDialog;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    move-object v0, v1

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Dialog;->onStop()V

    .line 109
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 110
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public setContentView(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 77
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 98
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDialog;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
