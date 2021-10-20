.class Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 157
    return-void
.end method

.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 11

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 162
    return-void
.end method

.method public setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 167
    return-void
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 172
    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 177
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
