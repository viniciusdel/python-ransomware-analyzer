.class public Landroid/support/v7/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private final mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/support/v7/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 10

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    sget v9, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    invoke-direct/range {v4 .. v9}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 13

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 14

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 94
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 95
    move-object v8, v0

    move-object v9, v1

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 97
    move-object v8, v0

    new-instance v9, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v10, v11, v12}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuPopupHelper;Landroid/support/v7/view/menu/MenuBuilder;)V

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    .line 98
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 99
    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 100
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 102
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v7, v8

    .line 103
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move-object v10, v7

    sget v11, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 106
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 109
    move-object v8, v2

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/view/menu/MenuPopupHelper;)Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 16

    .prologue
    .line 204
    move-object/from16 v0, p0

    const/4 v11, 0x0

    move v1, v11

    .line 205
    const/4 v11, 0x0

    move-object v2, v11

    .line 206
    const/4 v11, 0x0

    move v3, v11

    .line 208
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    move-object v4, v11

    .line 209
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v5, v11

    .line 210
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v6, v11

    .line 211
    move-object v11, v4

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    move v7, v11

    .line 212
    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_4

    .line 213
    move-object v11, v4

    move v12, v8

    invoke-interface {v11, v12}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    move v9, v11

    .line 214
    move v11, v9

    move v12, v3

    if-eq v11, v12, :cond_0

    .line 215
    move v11, v9

    move v3, v11

    .line 216
    const/4 v11, 0x0

    move-object v2, v11

    .line 219
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v11, :cond_1

    .line 220
    move-object v11, v0

    new-instance v12, Landroid/widget/FrameLayout;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 223
    :cond_1
    move-object v11, v4

    move v12, v8

    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v11, v12, v13, v14}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object v2, v11

    .line 224
    move-object v11, v2

    move v12, v5

    move v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 226
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    move v10, v11

    .line 227
    move v11, v10

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v11, v12, :cond_2

    .line 228
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    move v0, v11

    .line 234
    :goto_1
    return v0

    .line 229
    :cond_2
    move v11, v10

    move v12, v1

    if-le v11, v12, :cond_3

    .line 230
    move v11, v10

    move v1, v11

    .line 212
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 234
    :cond_4
    move v11, v1

    move v0, v11

    goto :goto_1
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 172
    :cond_0
    return-void
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getGravity()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    move v0, v1

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 6

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "MenuPopupHelpers manage their own views"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v0, v1

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

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

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_0

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 307
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_1

    .line 308
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 310
    :cond_1
    goto :goto_0
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    .line 176
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 177
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 179
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 182
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object v1, v2

    .line 241
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    move-object v6, v7

    .line 191
    move-object v7, v6

    invoke-static {v7}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v7

    move-object v8, v6

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v7

    .line 192
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    .line 196
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 197
    const/4 v4, 0x1

    move v0, v4

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 13

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    new-instance v7, Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V

    move-object v2, v7

    .line 278
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 280
    const/4 v7, 0x0

    move v3, v7

    .line 281
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I

    move-result v7

    move v4, v7

    .line 282
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 283
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    move-object v6, v7

    .line 284
    move-object v7, v6

    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v6

    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 285
    const/4 v7, 0x1

    move v3, v7

    .line 289
    :cond_0
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 291
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 292
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v7, :cond_1

    .line 293
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v7

    .line 295
    :cond_1
    const/4 v7, 0x1

    move v0, v7

    .line 298
    :goto_1
    return v0

    .line 282
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 298
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 114
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 272
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 118
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 122
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 11

    .prologue
    .line 139
    move-object v0, p0

    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ListPopupWindow;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    .line 140
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 141
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 145
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    move-object v1, v3

    .line 146
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 147
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 148
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 149
    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 151
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 156
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v3, :cond_1

    .line 157
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v4

    iput v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 158
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 161
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 162
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 163
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 164
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    const/4 v3, 0x1

    move v0, v3

    :goto_1
    return v0

    .line 147
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 153
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 264
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v2, :cond_0

    .line 265
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 267
    :cond_0
    return-void
.end method
