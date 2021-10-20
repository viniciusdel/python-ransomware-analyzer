.class Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;
.super Landroid/support/v7/widget/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContainer;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_1

    .line 31
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 32
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 37
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;->mContainer:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method
