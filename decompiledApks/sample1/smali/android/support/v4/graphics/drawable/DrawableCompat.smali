.class public Landroid/support/v4/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;,
        Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 216
    move v1, v0

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 217
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    .line 231
    :goto_0
    return-void

    .line 218
    :cond_0
    move v1, v0

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 219
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    .line 220
    :cond_1
    move v1, v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 221
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    .line 222
    :cond_2
    move v1, v0

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 223
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    .line 224
    :cond_3
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    .line 225
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    .line 226
    :cond_4
    move v1, v0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_5

    .line 227
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0

    .line 229
    :cond_5
    new-instance v1, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 3

    .prologue
    .line 386
    move-object v0, p0

    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 243
    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 5

    .prologue
    .line 258
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 259
    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 7

    .prologue
    .line 284
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 285
    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 11

    .prologue
    .line 295
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget-object v5, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 296
    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 375
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    .line 376
    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .prologue
    .line 305
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 306
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 5

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 316
    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 326
    return-void
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v1, :cond_0

    .line 359
    move-object v1, v0

    check-cast v1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 361
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 344
    move-object v0, p0

    sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompat;->IMPL:Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
