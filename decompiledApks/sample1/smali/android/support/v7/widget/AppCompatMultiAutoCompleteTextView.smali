.class public Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

.field private mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010176

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    sget-object v7, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 69
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 70
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 75
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 76
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 78
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 79
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 80
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 81
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 163
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 166
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 167
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 169
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

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
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

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
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
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
    .line 94
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 95
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 117
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 119
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
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 174
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 175
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 177
    :cond_0
    return-void
.end method
