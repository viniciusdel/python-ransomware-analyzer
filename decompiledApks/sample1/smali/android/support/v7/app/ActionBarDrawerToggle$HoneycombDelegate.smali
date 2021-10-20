.class Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 508
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V
    .locals 5

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 518
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object v1, v3

    .line 520
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 521
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 525
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 523
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    move-object v2, v3

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 4

    .prologue
    .line 530
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 531
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 6

    .prologue
    .line 545
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 547
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 8

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 538
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    move-object v6, v1

    move v7, v2

    invoke-static {v4, v5, v6, v7}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .line 540
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 541
    return-void
.end method
