.class public Landroid/support/v7/graphics/drawable/DrawableWrapper;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapper.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getState()[I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 154
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 9

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    move-object v6, v2

    move-wide v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 178
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 58
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 83
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 68
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 73
    return-void
.end method

.method public setHotspot(FF)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 203
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 208
    return-void
.end method

.method public setState([I)Z
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 188
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 193
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 198
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 216
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 222
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method
