.class Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
.super Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerArrowDrawableToggle"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    .line 472
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;

    .line 473
    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->getProgress()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public setPosition(F)V
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 477
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    .line 481
    :cond_0
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setProgress(F)V

    .line 482
    return-void

    .line 478
    :cond_1
    move v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 479
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V

    goto :goto_0
.end method
