.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/support/design/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mActionArea:Landroid/widget/FrameLayout;

.field private final mIconSize:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private final mTextView:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/design/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 66
    move-object v4, v1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_navigation_menu_item:I

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 67
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    .line 69
    move-object v4, v0

    move-object v5, v0

    sget v6, Landroid/support/design/R$id;->design_menu_item_text:I

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v4, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    .line 70
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 71
    return-void
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    new-instance v3, Landroid/util/TypedValue;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v3

    .line 111
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/design/R$attr;->colorControlHighlight:I

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object v2, v3

    .line 113
    move-object v3, v2

    sget-object v4, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    iget v7, v7, Landroid/util/TypedValue;->data:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    move-object v3, v2

    sget-object v4, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 115
    move-object v3, v2

    move-object v0, v3

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 100
    move-object v2, v0

    move-object v3, v0

    sget v4, Landroid/support/design/R$id;->design_menu_item_action_area_stub:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    .line 103
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 104
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 105
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 77
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 79
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 80
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 84
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 85
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 86
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 89
    return-void

    .line 77
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Landroid/support/design/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 169
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    move-object v3, v2

    sget-object v4, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 172
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public recycle()V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 95
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public setCheckable(Z)V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 133
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 138
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 139
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 148
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    move-object v2, v3

    .line 149
    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v1

    :goto_0
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 150
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 153
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void

    .line 149
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 177
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 179
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 185
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method
