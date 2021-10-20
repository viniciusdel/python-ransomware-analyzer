.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v7/app/AppCompatCallback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method public getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 4

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v1, :cond_0

    .line 456
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 458
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    move-object v0, v1

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->onSupportContentChanged()V

    .line 414
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 60
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v2

    .line 293
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 162
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    .line 163
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const/4 v4, 0x1

    move v0, v4

    .line 156
    :goto_0
    return v0

    .line 151
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 152
    move-object v4, v2

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x102002c

    if-ne v4, v5, :cond_1

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v4

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 154
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 156
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 448
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 449
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 67
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 142
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    .line 143
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 136
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 137
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 6

    .prologue
    .line 337
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v1, v4

    .line 339
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 340
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    move-object v2, v4

    .line 342
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 343
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 344
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 347
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v4, 0x1

    move v0, v4

    .line 360
    :goto_1
    return v0

    .line 348
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 351
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 356
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 168
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 233
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
    .line 109
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 110
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 100
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 192
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    move v0, v2

    return v0
.end method
