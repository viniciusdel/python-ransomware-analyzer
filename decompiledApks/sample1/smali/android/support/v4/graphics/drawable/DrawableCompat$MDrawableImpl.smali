.class Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    .line 202
    return-void
.end method
