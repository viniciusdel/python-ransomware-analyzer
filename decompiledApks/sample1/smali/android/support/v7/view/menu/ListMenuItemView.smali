.class public Landroid/support/v7/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 66
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->MenuView:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 69
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 72
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 74
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 76
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 277
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 279
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, v1

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 7

    .prologue
    .line 260
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 261
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 264
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method private insertIconView()V
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 246
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_icon:I

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 248
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 249
    return-void
.end method

.method private insertRadioButton()V
    .locals 7

    .prologue
    .line 252
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 253
    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_radio:I

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 256
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 257
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 100
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mMenuType:I

    .line 102
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 104
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 106
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 107
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 109
    return-void

    .line 102
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 90
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 91
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    :cond_0
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroid/support/v7/appcompat/R$id;->shortcut:I

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v5, :cond_0

    .line 235
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 236
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, v5

    .line 237
    move-object v5, v3

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v5, :cond_0

    .line 238
    move-object v5, v4

    move-object v6, v3

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 241
    :cond_0
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 242
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v5, :cond_0

    .line 173
    :goto_0
    return-void

    .line 139
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v5, :cond_1

    .line 141
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 143
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    move-object v2, v5

    .line 144
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object v3, v5

    .line 153
    :goto_1
    move v5, v1

    if-eqz v5, :cond_7

    .line 154
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 156
    move v5, v1

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_2
    move v4, v5

    .line 157
    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v5

    move v6, v4

    if-eq v5, v6, :cond_2

    .line 158
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 162
    :cond_2
    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 163
    move-object v5, v3

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 173
    :cond_3
    :goto_3
    goto :goto_0

    .line 146
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v5, :cond_5

    .line 147
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 149
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object v2, v5

    .line 150
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    move-object v3, v5

    goto :goto_1

    .line 156
    :cond_6
    const/16 v5, 0x8

    goto :goto_2

    .line 166
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_8

    .line 167
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 169
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v5, :cond_3

    .line 170
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_3
.end method

.method public setChecked(Z)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_0

    .line 180
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 182
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    move-object v2, v3

    .line 190
    :goto_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 191
    return-void

    .line 184
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_2

    .line 185
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 187
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    move-object v2, v3

    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput-boolean v5, v4, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean v3, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 113
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 208
    move v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_2

    .line 229
    :goto_1
    return-void

    .line 207
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 212
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    move-object v3, v1

    if-nez v3, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v3, :cond_3

    .line 213
    goto :goto_1

    .line 216
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_4

    .line 217
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/view/menu/ListMenuItemView;->insertIconView()V

    .line 220
    :cond_4
    move-object v3, v1

    if-nez v3, :cond_5

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v3, :cond_8

    .line 221
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    move v4, v2

    if-eqz v4, :cond_7

    move-object v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    .line 224
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    :cond_6
    :goto_3
    goto :goto_1

    .line 221
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 227
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setShortcut(ZC)V
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 197
    move v4, v3

    if-nez v4, :cond_0

    .line 198
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 202
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_1
    return-void

    .line 194
    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 117
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    move v0, v1

    return v0
.end method
