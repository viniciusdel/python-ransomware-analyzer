.class Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;
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
    name = "JellybeanMr2Delegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 557
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 558
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    .line 559
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V
    .locals 5

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object v1, v3

    .line 574
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 575
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 579
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 577
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    move-object v2, v3

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 563
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const v8, 0x101030b

    aput v8, v6, v7

    const v6, 0x10102ce

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 565
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 566
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 567
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 4

    .prologue
    .line 584
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 585
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
    .locals 5

    .prologue
    .line 600
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 601
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 602
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 604
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 592
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 593
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 594
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 596
    :cond_0
    return-void
.end method
