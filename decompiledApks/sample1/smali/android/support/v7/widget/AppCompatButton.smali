.class public Landroid/support/v7/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

.field private final mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->buttonStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatButton;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 65
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatButton;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 66
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 68
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 69
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 70
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 71
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Button;->drawableStateChanged()V

    .line 144
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 147
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v1, :cond_1

    .line 148
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 150
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

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
    .line 137
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 163
    move-object v2, v1

    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 169
    move-object v2, v1

    const-class v3, Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
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
    .line 75
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v2, :cond_0

    .line 183
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 98
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 100
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
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatButton;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 155
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatButton;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 158
    :cond_0
    return-void
.end method
