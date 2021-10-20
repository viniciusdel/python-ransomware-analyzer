.class Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Landroid/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuPopupHelper;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/BaseAdapter;-><init>()V

    .line 341
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 344
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 345
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 346
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 8

    .prologue
    .line 386
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v6}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$300(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v1, v6

    .line 387
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 388
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v6}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$300(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 389
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 390
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 391
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 392
    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 393
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 399
    :goto_1
    return-void

    .line 390
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    :cond_1
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 399
    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$100(Landroid/support/v7/view/menu/MenuPopupHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 351
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_1

    .line 352
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    .line 354
    :goto_1
    return v0

    .line 349
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_1
.end method

.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 5

    .prologue
    .line 358
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v3}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$100(Landroid/support/v7/view/menu/MenuPopupHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 360
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt v3, v4, :cond_0

    .line 361
    add-int/lit8 v1, v1, 0x1

    .line 363
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v3

    return-object v0

    .line 358
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-nez v5, :cond_0

    .line 374
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v5}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$200(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Landroid/support/v7/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 377
    :cond_0
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v4, v5

    .line 378
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-boolean v5, v5, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v5, :cond_1

    .line 379
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 381
    :cond_1
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 382
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 404
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 405
    return-void
.end method
