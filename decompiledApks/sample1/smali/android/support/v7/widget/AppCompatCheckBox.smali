.class public Landroid/support/v7/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroid/support/v4/widget/TintableCompoundButton;


# instance fields
.field private mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

.field private mTintManager:Landroid/support/v7/widget/TintManager;


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

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v6, Landroid/support/v7/appcompat/R$attr;->checkboxStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatCheckBox;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 60
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatCheckBox;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;Landroid/support/v7/widget/TintManager;)V

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    .line 61
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v2

    move v1, v2

    .line 82
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v2

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatCheckBox;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatCheckBox;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void

    .line 74
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatCheckBox;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    .line 68
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    .line 70
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v2, :cond_0

    .line 117
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 119
    :cond_0
    return-void
.end method
