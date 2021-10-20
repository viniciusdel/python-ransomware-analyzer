.class public Landroid/support/v7/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "AppCompatImageView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v5

    move-object v4, v5

    .line 62
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 63
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 65
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/AppCompatImageHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;Landroid/support/v7/widget/TintManager;)V

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatImageView;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 66
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatImageView;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 146
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 147
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 149
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 87
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 73
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_0
    return-void
.end method
