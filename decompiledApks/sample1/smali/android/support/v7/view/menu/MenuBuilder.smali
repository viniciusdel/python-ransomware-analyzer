.class public Landroid/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;,
        Landroid/support/v7/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 129
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 160
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 162
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 164
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 166
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 168
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 170
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 216
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 218
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 220
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 221
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 223
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 224
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 225
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 227
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 228
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 17

    .prologue
    .line 452
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    new-instance v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move v15, v6

    invoke-direct/range {v8 .. v15}, Landroid/support/v7/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    move-object v0, v7

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 7

    .prologue
    .line 276
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    :goto_0
    return-void

    .line 278
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 279
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 280
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v4, v5

    .line 281
    move-object v5, v4

    if-nez v5, :cond_1

    .line 282
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 286
    :goto_2
    goto :goto_1

    .line 284
    :cond_1
    move-object v5, v4

    move v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_2

    .line 287
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 288
    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const-string v9, "android:menu:presenters"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v2, v8

    .line 338
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v4, v8

    .line 341
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v8

    .line 342
    move-object v8, v5

    if-nez v8, :cond_3

    .line 343
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 353
    :cond_2
    :goto_2
    goto :goto_1

    .line 345
    :cond_3
    move-object v8, v5

    invoke-interface {v8}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v8

    move v6, v8

    .line 346
    move v8, v6

    if-lez v8, :cond_2

    .line 347
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    move-object v7, v8

    .line 348
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 349
    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Landroid/support/v7/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 354
    :cond_4
    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 333
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 317
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v4, v8

    .line 318
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v8

    .line 319
    move-object v8, v5

    if-nez v8, :cond_2

    .line 320
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 330
    :cond_1
    :goto_2
    goto :goto_1

    .line 322
    :cond_2
    move-object v8, v5

    invoke-interface {v8}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v8

    move v6, v8

    .line 323
    move v8, v6

    if-lez v8, :cond_1

    .line 324
    move-object v8, v5

    invoke-interface {v8}, Landroid/support/v7/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    move-object v7, v8

    .line 325
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 326
    move-object v8, v2

    move v9, v6

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 332
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:presenters"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 333
    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
    .locals 9

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 309
    :goto_0
    return v0

    .line 294
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 297
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 298
    move-object v7, v2

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v7

    move v3, v7

    .line 301
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 302
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v6, v7

    .line 303
    move-object v7, v6

    if-nez v7, :cond_3

    .line 304
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 308
    :cond_2
    :goto_2
    goto :goto_1

    .line 305
    :cond_3
    move v7, v3

    if-nez v7, :cond_2

    .line 306
    move-object v7, v6

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v7

    move v3, v7

    goto :goto_2

    .line 309
    :cond_4
    move v7, v3

    move v0, v7

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 824
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 825
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v4

    .line 826
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getOrdering()I

    move-result v4

    move v5, v1

    if-gt v4, v5, :cond_0

    .line 827
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 831
    :goto_1
    return v0

    .line 824
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 831
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 6

    .prologue
    .line 757
    move v0, p0

    move v2, v0

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    const/16 v3, 0x10

    shr-int/lit8 v2, v2, 0x10

    move v1, v2

    .line 759
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    sget-object v3, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 760
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "order does not contain a valid category."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_1
    sget-object v2, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    move v3, v1

    aget v2, v2, v3

    const/16 v3, 0x10

    shl-int/lit8 v2, v2, 0x10

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method private removeItemAtInt(IZ)V
    .locals 5

    .prologue
    .line 562
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 566
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 567
    :cond_2
    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 10

    .prologue
    .line 1184
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 1186
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 1187
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1190
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1191
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1210
    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1211
    return-void

    .line 1193
    :cond_0
    move v7, v1

    if-lez v7, :cond_3

    .line 1194
    move-object v7, v0

    move-object v8, v6

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1199
    :cond_1
    :goto_1
    move v7, v3

    if-lez v7, :cond_4

    .line 1200
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v8

    move v9, v3

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1206
    :cond_2
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1195
    :cond_3
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 1196
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1201
    :cond_4
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 1202
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 5

    .prologue
    .line 790
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 793
    return-void

    .line 790
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 462
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 11

    .prologue
    .line 472
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    .prologue
    .line 467
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 457
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 25

    .prologue
    .line 502
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v11, v18

    .line 503
    move-object/from16 v18, v11

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    move-object/from16 v12, v18

    .line 505
    move-object/from16 v18, v12

    if-eqz v18, :cond_2

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    :goto_0
    move/from16 v13, v18

    .line 507
    move/from16 v18, v9

    const/16 v19, 0x1

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_0

    .line 508
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/view/menu/MenuBuilder;->removeGroup(I)V

    .line 511
    :cond_0
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_1
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 512
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v15, v18

    .line 513
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v20, v0

    if-gez v20, :cond_3

    move-object/from16 v20, v8

    :goto_2
    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v16, v18

    .line 515
    move-object/from16 v18, v16

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    .line 518
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v15

    move-object/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v19, v15

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v19, v16

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v17, v18

    .line 521
    move-object/from16 v18, v10

    if-eqz v18, :cond_1

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    .line 522
    move-object/from16 v18, v10

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v19, v0

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    .line 511
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 505
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 513
    :cond_3
    move-object/from16 v20, v7

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    goto/16 :goto_2

    .line 526
    :cond_4
    move/from16 v18, v13

    move/from16 v2, v18

    return v2
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 14

    .prologue
    .line 433
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v7, v3

    invoke-static {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    move v5, v7

    .line 435
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v5

    move-object v12, v4

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    invoke-direct/range {v7 .. v13}, Landroid/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v7

    move-object v6, v7

    .line 438
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v7, :cond_0

    .line 440
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 443
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v9, v5

    invoke-static {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v8

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 444
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 446
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 5

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 256
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 257
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 258
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 8

    .prologue
    .line 482
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 11

    .prologue
    .line 496
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 13

    .prologue
    .line 487
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v7

    .line 488
    new-instance v7, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    move-object v6, v7

    .line 489
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 491
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 3

    .prologue
    .line 818
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v1, :cond_0

    .line 819
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 821
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 584
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 585
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    .line 587
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 589
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 590
    return-void
.end method

.method public clearAll()V
    .locals 3

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 575
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 576
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clearHeader()V

    .line 577
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 578
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 579
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 580
    return-void
.end method

.method public clearHeader()V
    .locals 3

    .prologue
    .line 1175
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1176
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1177
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1179
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1180
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1013
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 1014
    return-void
.end method

.method public final close(Z)V
    .locals 8

    .prologue
    .line 997
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v5, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 999
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1000
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 1001
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v4, v5

    .line 1002
    move-object v5, v4

    if-nez v5, :cond_1

    .line 1003
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1007
    :goto_2
    goto :goto_1

    .line 1005
    :cond_1
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Landroid/support/v7/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_2

    .line 1008
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1009
    goto :goto_0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 1336
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v7, v1

    if-eq v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 1354
    :goto_0
    return v0

    .line 1338
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 1340
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1341
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1342
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1343
    move-object v6, v5

    if-nez v6, :cond_3

    .line 1344
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1348
    :cond_2
    goto :goto_1

    .line 1345
    :cond_3
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v2, v7

    if-eqz v6, :cond_2

    .line 1349
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1351
    move v6, v2

    if-eqz v6, :cond_5

    .line 1352
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1354
    :cond_5
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 10

    .prologue
    .line 1314
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 1332
    :goto_0
    return v0

    .line 1316
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 1318
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1319
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1320
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1321
    move-object v6, v5

    if-nez v6, :cond_2

    .line 1322
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1326
    :cond_1
    goto :goto_1

    .line 1323
    :cond_2
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Landroid/support/v7/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v2, v7

    if-eqz v6, :cond_1

    .line 1327
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1329
    move v6, v2

    if-eqz v6, :cond_4

    .line 1330
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1332
    :cond_4
    move v6, v2

    move v0, v6

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 5

    .prologue
    .line 702
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 8

    .prologue
    .line 706
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v6

    move v3, v6

    .line 708
    move v6, v2

    if-gez v6, :cond_0

    .line 709
    const/4 v6, 0x0

    move v2, v6

    .line 712
    :cond_0
    move v6, v2

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 713
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 715
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_1

    .line 716
    move v6, v4

    move v0, v6

    .line 720
    :goto_1
    return v0

    .line 712
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 720
    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 671
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v6

    move v2, v6

    .line 672
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 673
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v6

    .line 674
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 675
    move-object v6, v4

    move-object v0, v6

    .line 685
    :goto_1
    return-object v0

    .line 676
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 677
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 679
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 680
    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    .line 672
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 685
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 7

    .prologue
    .line 689
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v5

    move v2, v5

    .line 691
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 692
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v5

    .line 693
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 694
    move v5, v3

    move v0, v5

    .line 698
    :goto_1
    return v0

    .line 691
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 16

    .prologue
    .line 903
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    move-object v3, v11

    .line 904
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 905
    move-object v11, v0

    move-object v12, v3

    move v13, v1

    move-object v14, v2

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 907
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 908
    const/4 v11, 0x0

    move-object v0, v11

    .line 938
    :goto_0
    return-object v0

    .line 911
    :cond_0
    move-object v11, v2

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    move v4, v11

    .line 912
    new-instance v11, Landroid/view/KeyCharacterMap$KeyData;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    move-object v5, v11

    .line 914
    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v11

    .line 917
    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 918
    move v11, v6

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 919
    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v11

    goto :goto_0

    .line 922
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v11

    move v7, v11

    .line 925
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 926
    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v9, v11

    .line 927
    move v11, v7

    if-eqz v11, :cond_5

    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v11

    :goto_2
    move v10, v11

    .line 929
    move v11, v10

    move-object v12, v5

    iget-object v12, v12, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_2

    move v11, v4

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    :cond_2
    move v11, v10

    move-object v12, v5

    iget-object v12, v12, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v13, 0x2

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_3

    move v11, v4

    const/4 v12, 0x2

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_4

    :cond_3
    move v11, v7

    if-eqz v11, :cond_6

    move v11, v10

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    move v11, v1

    const/16 v12, 0x43

    if-ne v11, v12, :cond_6

    .line 935
    :cond_4
    move-object v11, v9

    move-object v0, v11

    goto :goto_0

    .line 927
    :cond_5
    move-object v11, v9

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v11

    goto :goto_2

    .line 925
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 938
    :cond_7
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 859
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v12

    move v4, v12

    .line 860
    move-object v12, v3

    invoke-virtual {v12}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    move v5, v12

    .line 861
    new-instance v12, Landroid/view/KeyCharacterMap$KeyData;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    move-object v6, v12

    .line 863
    move-object v12, v3

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v12

    move v7, v12

    .line 865
    move v12, v7

    if-nez v12, :cond_0

    move v12, v2

    const/16 v13, 0x43

    if-eq v12, v13, :cond_0

    .line 887
    :goto_0
    return-void

    .line 870
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v8, v12

    .line 871
    const/4 v12, 0x0

    move v9, v12

    :goto_1
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_5

    .line 872
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v10, v12

    .line 873
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 874
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v12

    check-cast v12, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v13, v1

    move v14, v2

    move-object v15, v3

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 876
    :cond_1
    move v12, v4

    if-eqz v12, :cond_4

    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v12

    :goto_2
    move v11, v12

    .line 877
    move v12, v5

    const/4 v13, 0x5

    and-int/lit8 v12, v12, 0x5

    if-nez v12, :cond_3

    move v12, v11

    if-eqz v12, :cond_3

    move v12, v11

    move-object v13, v6

    iget-object v13, v13, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v14, 0x0

    aget-char v13, v13, v14

    if-eq v12, v13, :cond_2

    move v12, v11

    move-object v13, v6

    iget-object v13, v13, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v14, 0x2

    aget-char v13, v13, v14

    if-eq v12, v13, :cond_2

    move v12, v4

    if-eqz v12, :cond_3

    move v12, v11

    const/16 v13, 0x8

    if-ne v12, v13, :cond_3

    move v12, v2

    const/16 v13, 0x43

    if-ne v12, v13, :cond_3

    :cond_2
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 884
    move-object v12, v1

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 871
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 876
    :cond_4
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v12

    goto :goto_2

    .line 887
    :cond_5
    goto :goto_0
.end method

.method public flagActionItems()V
    .locals 8

    .prologue
    .line 1125
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, v6

    .line 1127
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v6, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1132
    :cond_0
    const/4 v6, 0x0

    move v2, v6

    .line 1133
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v4, v6

    .line 1134
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v5, v6

    .line 1135
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1136
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1140
    :goto_2
    goto :goto_1

    .line 1138
    :cond_1
    move v6, v2

    move-object v7, v5

    invoke-interface {v7}, Landroid/support/v7/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v7

    or-int/2addr v6, v7

    move v2, v6

    goto :goto_2

    .line 1142
    :cond_2
    move v6, v2

    if-eqz v6, :cond_5

    .line 1143
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1144
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1145
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 1146
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 1147
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 1148
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1149
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1146
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1151
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    .line 1161
    :cond_4
    :goto_5
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1162
    goto :goto_0

    .line 1157
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1158
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1159
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_5
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1166
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    const-string v1, "android:menu:actionviewstates"

    move-object v0, v1

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 1358
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1278
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1274
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1282
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    move-object v0, v2

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1171
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 2

    .prologue
    .line 1310
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    move v0, v1

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    move-object v0, v1

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 1291
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1080
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v0, v4

    .line 1095
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1085
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 1087
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1088
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v2, v4

    .line 1089
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1087
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1092
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1093
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1095
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    move-object v0, v4

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 6

    .prologue
    .line 653
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_0

    .line 654
    const/4 v4, 0x1

    move v0, v4

    .line 666
    :goto_0
    return v0

    .line 657
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    move v1, v4

    .line 659
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 660
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v4

    .line 661
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 659
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 666
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 2

    .prologue
    .line 770
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    move v0, v1

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 735
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 2

    .prologue
    .line 799
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    move v0, v1

    return v0
.end method

.method onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 1075
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1076
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1077
    return-void
.end method

.method onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 1064
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1065
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1066
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 4

    .prologue
    .line 1024
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v2, :cond_1

    .line 1025
    move v2, v1

    if-eqz v2, :cond_0

    .line 1026
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1027
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1030
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 6

    .prologue
    .line 944
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
    .locals 16

    .prologue
    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v1

    check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v4, v9

    .line 954
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 955
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 984
    :goto_0
    return v0

    .line 958
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->invoke()Z

    move-result v9

    move v5, v9

    .line 960
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v9

    move-object v6, v9

    .line 961
    move-object v9, v6

    if-eqz v9, :cond_3

    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 962
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 963
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 964
    move v9, v5

    if-eqz v9, :cond_2

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 984
    :cond_2
    :goto_2
    move v9, v5

    move v0, v9

    goto :goto_0

    .line 961
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 965
    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v7

    if-eqz v9, :cond_9

    .line 966
    :cond_5
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 968
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-nez v9, :cond_6

    .line 969
    move-object v9, v4

    new-instance v10, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v0

    move-object v14, v4

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 972
    :cond_6
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v8, v9

    .line 973
    move v9, v7

    if-eqz v9, :cond_7

    .line 974
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 976
    :cond_7
    move v9, v5

    move-object v10, v0

    move-object v11, v8

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z

    move-result v10

    or-int/2addr v9, v10

    move v5, v9

    .line 977
    move v9, v5

    if-nez v9, :cond_8

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 978
    :cond_8
    goto :goto_2

    .line 979
    :cond_9
    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 980
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 9

    .prologue
    .line 836
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v4, v6

    .line 838
    const/4 v6, 0x0

    move v5, v6

    .line 840
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 841
    move-object v6, v0

    move-object v7, v4

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v6

    move v5, v6

    .line 844
    :cond_0
    move v6, v3

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 845
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 848
    :cond_1
    move v6, v5

    move v0, v6

    return v0
.end method

.method public removeGroup(I)V
    .locals 8

    .prologue
    .line 536
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v5

    move v2, v5

    .line 538
    move v5, v2

    if-ltz v5, :cond_1

    .line 539
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    .line 540
    const/4 v5, 0x0

    move v4, v5

    .line 541
    :goto_0
    move v5, v4

    add-int/lit8 v4, v4, 0x1

    move v6, v3

    if-ge v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_0

    .line 543
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    goto :goto_0

    .line 547
    :cond_0
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 549
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 5

    .prologue
    .line 531
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 532
    return-void
.end method

.method public removeItemAt(I)V
    .locals 5

    .prologue
    .line 570
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 571
    return-void
.end method

.method public removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 7

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v3, v5

    .line 268
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    move-object v4, v5

    .line 269
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 270
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 272
    :cond_1
    goto :goto_0

    .line 273
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    if-nez v8, :cond_0

    .line 419
    :goto_0
    return-void

    .line 396
    :cond_0
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v2, v8

    .line 399
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v8

    move v3, v8

    .line 400
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 401
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 402
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 403
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 404
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 406
    :cond_1
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 407
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v7, v8

    .line 408
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 400
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 412
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:expandedactionview"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 413
    move v8, v4

    if-lez v8, :cond_4

    .line 414
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 415
    move-object v8, v5

    if-eqz v8, :cond_4

    .line 416
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v8

    .line 419
    :cond_4
    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 362
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    .line 367
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v8

    move v3, v8

    .line 368
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_3

    .line 369
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v5, v8

    .line 370
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 371
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 372
    move-object v8, v2

    if-nez v8, :cond_0

    .line 373
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 375
    :cond_0
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 376
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    move-object v8, v1

    const-string v9, "android:menu:expandedactionview"

    move-object v10, v5

    invoke-interface {v10}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    :cond_1
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 381
    move-object v8, v5

    invoke-interface {v8}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v7, v8

    .line 382
    move-object v8, v7

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 368
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    :cond_3
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 387
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 389
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 427
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 1302
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1303
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 232
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 9

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    move v2, v6

    .line 595
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 596
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 597
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 598
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_0

    .line 599
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 596
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 603
    :cond_2
    move-object v6, v5

    move-object v7, v5

    move-object v8, v1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 606
    :cond_4
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 9

    .prologue
    .line 610
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 612
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 613
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v6, v7

    .line 614
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 615
    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 616
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 612
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 619
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 8

    .prologue
    .line 641
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 643
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 644
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 645
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 646
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    .line 643
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 649
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 9

    .prologue
    .line 623
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 628
    const/4 v7, 0x0

    move v4, v7

    .line 629
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 630
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v6, v7

    .line 631
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_0

    .line 632
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v4, v7

    .line 629
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 636
    :cond_1
    move v7, v4

    if-eqz v7, :cond_2

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 637
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1257
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1258
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1246
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderTitleInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1233
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1234
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1221
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1222
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 8

    .prologue
    .line 1269
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1270
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 4

    .prologue
    .line 1306
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1307
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 4

    .prologue
    .line 1367
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1368
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 4

    .prologue
    .line 740
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 742
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 743
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 4

    .prologue
    .line 781
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 786
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 787
    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 3

    .prologue
    .line 1049
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1051
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    .line 1052
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1053
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1055
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 3

    .prologue
    .line 1042
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v1, :cond_0

    .line 1043
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1044
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1046
    :cond_0
    return-void
.end method
