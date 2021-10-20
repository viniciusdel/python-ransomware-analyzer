.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

.field private mUpdateSuspended:Z

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 6

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 328
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 334
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 335
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 11

    .prologue
    .line 506
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v1

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 507
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v6

    .line 508
    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v5, v6

    .line 509
    move-object v6, v5

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 510
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    if-nez v6, :cond_0

    .line 511
    move-object v6, v0

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const v9, 0x106000d

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v7, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    .line 513
    :cond_0
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 506
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    :cond_2
    return-void
.end method

.method private prepareMenuItems()V
    .locals 20

    .prologue
    .line 435
    move-object/from16 v1, p0

    move-object v14, v1

    iget-boolean v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    if-eqz v14, :cond_0

    .line 503
    :goto_0
    return-void

    .line 438
    :cond_0
    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 439
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 440
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>(Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 442
    const/4 v14, -0x1

    move v2, v14

    .line 443
    const/4 v14, 0x0

    move v3, v14

    .line 444
    const/4 v14, 0x0

    move v4, v14

    .line 445
    const/4 v14, 0x0

    move v5, v14

    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v14}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v6, v14

    :goto_1
    move v14, v5

    move v15, v6

    if-ge v14, v15, :cond_f

    .line 446
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v14}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    move v15, v5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v7, v14

    .line 447
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 448
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 450
    :cond_1
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 451
    move-object v14, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 453
    :cond_2
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 454
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    move-object v8, v14

    .line 455
    move-object v14, v8

    invoke-interface {v14}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 456
    move v14, v5

    if-eqz v14, :cond_3

    .line 457
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v17

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 459
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 460
    const/4 v14, 0x0

    move v9, v14

    .line 461
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v10, v14

    .line 462
    const/4 v14, 0x0

    move v11, v14

    move-object v14, v8

    invoke-interface {v14}, Landroid/view/SubMenu;->size()I

    move-result v14

    move v12, v14

    :goto_2
    move v14, v11

    move v15, v12

    if-ge v14, v15, :cond_8

    .line 463
    move-object v14, v8

    move v15, v11

    invoke-interface {v14, v15}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v13, v14

    .line 464
    move-object v14, v13

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 465
    move v14, v9

    if-nez v14, :cond_4

    move-object v14, v13

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 466
    const/4 v14, 0x1

    move v9, v14

    .line 468
    :cond_4
    move-object v14, v13

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 469
    move-object v14, v13

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 471
    :cond_5
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 472
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 474
    :cond_6
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v13

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 462
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 477
    :cond_8
    move v14, v9

    if-eqz v14, :cond_9

    .line 478
    move-object v14, v1

    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 445
    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 482
    :cond_a
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v14

    move v8, v14

    .line 483
    move v14, v8

    move v15, v2

    if-eq v14, v15, :cond_e

    .line 484
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v3, v14

    .line 485
    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    :goto_4
    move v4, v14

    .line 486
    move v14, v5

    if-eqz v14, :cond_b

    .line 487
    add-int/lit8 v3, v3, 0x1

    .line 488
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 495
    :cond_b
    :goto_5
    move v14, v4

    if-eqz v14, :cond_c

    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_c

    .line 496
    move-object v14, v7

    const v15, 0x106000d

    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 498
    :cond_c
    move-object v14, v1

    iget-object v14, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 499
    move v14, v8

    move v2, v14

    goto :goto_3

    .line 485
    :cond_d
    const/4 v14, 0x0

    goto :goto_4

    .line 491
    :cond_e
    move v14, v4

    if-nez v14, :cond_b

    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 492
    const/4 v14, 0x1

    move v4, v14

    .line 493
    move-object v14, v1

    move v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_5

    .line 502
    :cond_f
    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 503
    goto/16 :goto_0
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 12

    .prologue
    .line 530
    move-object v0, p0

    new-instance v8, Landroid/os/Bundle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    .line 531
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v8, :cond_0

    .line 532
    move-object v8, v1

    const-string v9, "android:menu:checked"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    :cond_0
    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 536
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v4, v8

    .line 537
    move-object v8, v4

    instance-of v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_1

    .line 538
    move-object v8, v4

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v5, v8

    .line 539
    move-object v8, v5

    if-eqz v8, :cond_2

    move-object v8, v5

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v8

    :goto_1
    move-object v6, v8

    .line 540
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 541
    new-instance v8, Landroid/support/design/internal/ParcelableSparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    move-object v7, v8

    .line 542
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 543
    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    :cond_1
    goto :goto_0

    .line 539
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 547
    :cond_3
    move-object v8, v1

    const-string v9, "android:menu:action_views"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 548
    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 8

    .prologue
    .line 349
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v2, v4

    .line 350
    move-object v4, v2

    instance-of v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v4, :cond_0

    .line 351
    const/4 v4, 0x2

    move v0, v4

    .line 359
    :goto_0
    return v0

    .line 352
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v4, :cond_1

    .line 353
    const/4 v4, 0x3

    move v0, v4

    goto :goto_0

    .line 354
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v4, :cond_3

    .line 355
    move-object v4, v2

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v3, v4

    .line 356
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 359
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 362
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Unknown item type."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 10

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 384
    :pswitch_0
    move-object v5, v1

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Landroid/support/design/internal/NavigationMenuItemView;

    move-object v3, v5

    .line 385
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$500(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 386
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$600(Landroid/support/design/internal/NavigationMenuPresenter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    move-object v5, v3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v7}, Landroid/support/design/internal/NavigationMenuPresenter;->access$700(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 389
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 390
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 392
    :cond_1
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 395
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 396
    goto :goto_0

    .line 392
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 399
    :pswitch_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    move-object v3, v5

    .line 400
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object v4, v5

    .line 401
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    goto/16 :goto_0

    .line 405
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object v3, v5

    .line 407
    move-object v5, v1

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 409
    goto/16 :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .locals 9

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 377
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    .line 369
    :pswitch_0
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v7}, Landroid/support/design/internal/NavigationMenuPresenter;->access$300(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    goto :goto_0

    .line 371
    :pswitch_1
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 373
    :pswitch_2
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 375
    :pswitch_3
    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v3

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 3

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v2, :cond_0

    .line 421
    move-object v2, v1

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuItemView;->recycle()V

    .line 423
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const-string v9, "android:menu:checked"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    move v2, v8

    .line 553
    move v8, v2

    if-eqz v8, :cond_1

    .line 554
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 555
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v4, v8

    .line 556
    move-object v8, v4

    instance-of v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_3

    .line 557
    move-object v8, v4

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v5, v8

    .line 558
    move-object v8, v5

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v8

    move v9, v2

    if-ne v8, v9, :cond_3

    .line 559
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 564
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 565
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 568
    :cond_1
    move-object v8, v1

    const-string v9, "android:menu:action_views"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v3, v8

    .line 570
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-object v5, v8

    .line 571
    move-object v8, v5

    instance-of v8, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_2

    .line 572
    move-object v8, v5

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v6, v8

    .line 573
    move-object v8, v6

    if-eqz v8, :cond_4

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v8

    :goto_2
    move-object v7, v8

    .line 574
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 575
    move-object v8, v7

    move-object v9, v3

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v8, v9}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 578
    :cond_2
    goto :goto_1

    .line 563
    :cond_3
    goto :goto_0

    .line 573
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 579
    :cond_5
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_2

    .line 523
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 525
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 526
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 527
    goto :goto_0
.end method

.method public setUpdateSuspended(Z)V
    .locals 4

    .prologue
    .line 582
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 583
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 427
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 428
    return-void
.end method
