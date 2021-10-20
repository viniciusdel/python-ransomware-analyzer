.class public Landroid/support/v7/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;,
        Landroid/support/v7/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    sget v8, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 16

    .prologue
    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 107
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 108
    move-object v6, v0

    new-instance v7, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 109
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 110
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 111
    move-object v6, v0

    new-instance v7, Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v11, v2

    const/4 v12, 0x0

    move v13, v4

    move v14, v5

    invoke-direct/range {v8 .. v14}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v7, v6, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    .line 112
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 113
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/PopupMenu;)Landroid/support/v7/view/menu/MenuPopupHelper;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 225
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/PopupMenu$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/PopupMenu$1;-><init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V

    iput-object v2, v1, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 178
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    move-object v0, v1

    return-object v0
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->getGravity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public inflate(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PopupMenu;->mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    if-eqz v3, :cond_0

    .line 260
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PopupMenu;->mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/support/v7/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/support/v7/widget/PopupMenu;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v3, :cond_0

    .line 250
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 8

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 276
    :goto_0
    return v0

    .line 270
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 275
    :cond_1
    new-instance v2, Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    .line 276
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 128
    return-void
.end method

.method public setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/PopupMenu;->mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    .line 243
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    .line 234
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    .line 217
    return-void
.end method
