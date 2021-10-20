.class public Landroid/support/v7/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mIconResId:I

    .line 56
    move-object v7, v0

    const/16 v8, 0x10

    iput v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 65
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 66
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mId:I

    .line 67
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mGroup:I

    .line 68
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mCategoryOrder:I

    .line 69
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mOrdering:I

    .line 70
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 71
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    move v0, v1

    return v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mGroup:I

    move v0, v1

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    move-object v0, v1

    return-object v0
.end method

.method public getItemId()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mId:I

    move v0, v1

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    move v0, v1

    return v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mOrdering:I

    move v0, v1

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public invoke()Z
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x1

    move v0, v1

    .line 225
    :goto_0
    return v0

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 221
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 225
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public isCheckable()Z
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 5

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ActionMenuItem;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ActionMenuItem;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 139
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 144
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 143
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 154
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 153
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    move v4, v1

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 159
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 158
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Landroid/support/v7/view/menu/ActionMenuItem;
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 149
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 148
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mIconResId:I

    .line 170
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mIconResId:I

    .line 165
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 176
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 181
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 186
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 191
    move-object v3, v0

    move v4, v2

    iput-char v4, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 192
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 268
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ActionMenuItem;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 5

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 3

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 202
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 197
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 207
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/view/menu/ActionMenuItem;->mFlags:I

    .line 212
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 211
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method
