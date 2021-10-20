.class public final Landroid/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/support/v4/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 10

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 76
    move-object v8, v0

    const/16 v9, 0x10

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 84
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 89
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 133
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 134
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    .line 135
    move-object v8, v0

    move v9, v2

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    .line 136
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 137
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    .line 138
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 139
    move-object v8, v0

    move v9, v7

    iput v9, v8, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 140
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/MenuItemImpl;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 3

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 554
    return-void
.end method

.method public collapseActionView()Z
    .locals 3

    .prologue
    .line 694
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 695
    const/4 v1, 0x0

    move v0, v1

    .line 707
    :goto_0
    return v0

    .line 697
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 699
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 702
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 707
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 3

    .prologue
    .line 680
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    const/4 v1, 0x0

    move v0, v1

    .line 689
    :goto_0
    return v0

    .line 684
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 689
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 5

    .prologue
    .line 644
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActionView()Landroid/view/View;
    .locals 4

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 627
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    move-object v0, v1

    .line 632
    :goto_0
    return-object v0

    .line 628
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_1

    .line 629
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 630
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    move-object v0, v1

    goto :goto_0

    .line 632
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v0, v1

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    move-object v0, v1

    return-object v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    move v0, v1

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 416
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 417
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v2, :cond_1

    .line 421
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v2, v3}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 422
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 423
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 427
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    move-object v0, v1

    return-object v0
.end method

.method public getItemId()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    move v0, v1

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 549
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    move-object v0, v1

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-char v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v0, v1

    return v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    move v0, v1

    return v0
.end method

.method public getOrdering()I
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    move v0, v1

    return v0
.end method

.method getShortcut()C
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-char v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-char v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 7

    .prologue
    .line 295
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v3

    move v1, v3

    .line 296
    move v3, v1

    if-nez v3, :cond_0

    .line 297
    const-string v3, ""

    move-object v0, v3

    .line 320
    :goto_0
    return-object v0

    .line 300
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Landroid/support/v7/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 301
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 316
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    :goto_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 304
    :sswitch_0
    move-object v3, v2

    sget-object v4, Landroid/support/v7/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    goto :goto_1

    .line 308
    :sswitch_1
    move-object v3, v2

    sget-object v4, Landroid/support/v7/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 309
    goto :goto_1

    .line 312
    :sswitch_2
    move-object v3, v2

    sget-object v4, Landroid/support/v7/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    goto :goto_1

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    move-object v1, v2

    .line 389
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 393
    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 396
    :goto_1
    return-object v0

    .line 387
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 396
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_1
.end method

.method getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 4

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 719
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 720
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 722
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 724
    :goto_1
    return v0

    .line 722
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 724
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/4 v2, 0x1

    move v0, v2

    .line 174
    :goto_0
    return v0

    .line 152
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 156
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 157
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 158
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 161
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 163
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 166
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 170
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 174
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    move v0, v1

    return v0
.end method

.method public isCheckable()Z
    .locals 3

    .prologue
    .line 452
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

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
    .line 476
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

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
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

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

.method public isExclusiveCheckable()Z
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

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
    .line 502
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 505
    :goto_1
    return v0

    .line 503
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 505
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public requestsActionButton()Z
    .locals 3

    .prologue
    .line 568
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 3

    .prologue
    .line 572
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 638
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 11

    .prologue
    .line 618
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v4

    .line 619
    move-object v4, v2

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v3, v4

    .line 620
    move-object v4, v0

    move-object v5, v3

    move v6, v1

    new-instance v7, Landroid/widget/LinearLayout;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v4

    .line 621
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 607
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 608
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 609
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    if-lez v2, :cond_0

    .line 610
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 612
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 613
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setActionViewExpanded(Z)V
    .locals 4

    .prologue
    .line 728
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 729
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 730
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-char v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 243
    move-object v2, v0

    move-object v0, v2

    .line 250
    :goto_0
    return-object v0

    .line 246
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    iput-char v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 248
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 250
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 232
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 457
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    move v2, v3

    .line 458
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v5, -0x2

    and-int/lit8 v4, v4, -0x2

    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 459
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v3, v4, :cond_0

    .line 460
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 463
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 458
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 484
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 489
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 486
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 6

    .prologue
    .line 493
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    move v2, v3

    .line 494
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v5, -0x3

    and-int/lit8 v4, v4, -0x3

    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 495
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v3, v4, :cond_0

    .line 496
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 498
    :cond_0
    return-void

    .line 494
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 185
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 190
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 192
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 187
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 5

    .prologue
    .line 467
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    :goto_0
    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 442
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 445
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 447
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 433
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 434
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 436
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 223
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setIsActionButton(Z)V
    .locals 6

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 577
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v4, -0x21

    and-int/lit8 v3, v3, -0x21

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 545
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-char v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 261
    move-object v2, v0

    move-object v0, v2

    .line 268
    :goto_0
    return-object v0

    .line 264
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 266
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 268
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 6

    .prologue
    .line 739
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 534
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 535
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 274
    move-object v3, v0

    move v4, v2

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    iput-char v4, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 276
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 278
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x3

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    .line 598
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :pswitch_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 602
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 603
    return-void

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 674
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 675
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 346
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 347
    return-void
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 7

    .prologue
    .line 655
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_0

    .line 656
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->reset()V

    .line 658
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 659
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 660
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 661
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_1

    .line 662
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    new-instance v3, Landroid/support/v7/view/menu/MenuItemImpl$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/view/menu/MenuItemImpl$1;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 669
    :cond_1
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 714
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 382
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 371
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 373
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v2, :cond_0

    .line 374
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 377
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 405
    move-object v2, v1

    if-nez v2, :cond_0

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    move-object v1, v2

    .line 409
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 411
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 527
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 529
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setVisibleInt(Z)Z
    .locals 6

    .prologue
    .line 517
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    move v2, v3

    .line 518
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v5, -0x9

    and-int/lit8 v4, v4, -0x9

    move v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 519
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    return v0

    .line 518
    :cond_0
    const/16 v5, 0x8

    goto :goto_0

    .line 519
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public shouldShowIcon()Z
    .locals 2

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 3

    .prologue
    .line 584
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
