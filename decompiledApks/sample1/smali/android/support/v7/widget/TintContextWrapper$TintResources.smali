.class Landroid/support/v7/widget/TintContextWrapper$TintResources;
.super Landroid/support/v7/widget/ResourcesWrapper;
.source "TintContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TintContextWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintResources"
.end annotation


# instance fields
.field private final mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/widget/TintManager;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    .line 60
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/TintContextWrapper$TintResources;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 61
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/ResourcesWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 71
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/TintContextWrapper$TintResources;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/TintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z

    move-result v3

    .line 74
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
