.class public Landroid/support/v7/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;,
        Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

.field private mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 12
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    const/4 v9, 0x0

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 13
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 183
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 13
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 119
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 127
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 194
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 195
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-direct {v9, v10}, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    .line 196
    move-object v7, v2

    new-instance v8, Landroid/support/v7/app/ActionBarDrawerToggle$1;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/ActionBarDrawerToggle$1;-><init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_0
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 217
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 218
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 219
    move-object v7, v4

    if-nez v7, :cond_4

    .line 220
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v11}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    .line 226
    :goto_1
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 206
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v7, :cond_1

    .line 207
    move-object v7, v0

    move-object v8, v1

    check-cast v8, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v8}, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 208
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v7, v8, :cond_2

    .line 209
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 210
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    .line 211
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 213
    :cond_3
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 223
    :cond_4
    move-object v7, v0

    move-object v8, v4

    check-cast v8, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    iput-object v8, v7, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/support/v7/app/ActionBarDrawerToggle;)Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/ActionBarDrawerToggle;)V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    move-object v0, v1

    return-object v0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    move-object v0, v1

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    move v0, v1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v2, :cond_0

    .line 262
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 265
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 406
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 407
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 391
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 392
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 7

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 379
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_0

    .line 278
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V

    .line 279
    const/4 v2, 0x1

    move v0, v2

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method setActionBarDescription(I)V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 461
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v3}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    const-string v3, "ActionBarDrawerToggle"

    const-string v4, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 454
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 456
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 457
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 6

    .prologue
    .line 355
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq v2, v3, :cond_0

    .line 356
    move v2, v1

    if-eqz v2, :cond_2

    .line 357
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    check-cast v3, Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x800003

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 363
    :goto_1
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 365
    :cond_0
    return-void

    .line 357
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 361
    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 5

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 330
    move v3, v1

    if-eqz v3, :cond_0

    .line 331
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 333
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_1

    .line 305
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 306
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 312
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v2, :cond_0

    .line 313
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    :cond_0
    return-void

    .line 308
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 309
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 447
    return-void
.end method

.method public syncState()V
    .locals 5

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 244
    :goto_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    .line 245
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x800003

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    :cond_0
    return-void

    .line 242
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 245
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
