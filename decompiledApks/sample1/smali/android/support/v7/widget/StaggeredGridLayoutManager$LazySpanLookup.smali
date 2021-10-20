.class Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2370
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2604
    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .locals 9

    .prologue
    .line 2513
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v7, :cond_0

    .line 2514
    const/4 v7, -0x1

    move v0, v7

    .line 2535
    :goto_0
    return v0

    .line 2516
    :cond_0
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    move-object v2, v7

    .line 2518
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 2519
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 2521
    :cond_1
    const/4 v7, -0x1

    move v3, v7

    .line 2522
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .line 2523
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 2524
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v6, v7

    .line 2525
    move-object v7, v6

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v8, v1

    if-lt v7, v8, :cond_3

    .line 2526
    move v7, v5

    move v3, v7

    .line 2530
    :cond_2
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 2531
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v5, v7

    .line 2532
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 2533
    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v0, v7

    goto :goto_0

    .line 2523
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2535
    :cond_4
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method private offsetFullSpansForAddition(II)V
    .locals 9

    .prologue
    .line 2496
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2506
    :goto_0
    return-void

    .line 2499
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_1
    move v5, v3

    if-ltz v5, :cond_2

    .line 2500
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v4, v5

    .line 2501
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 2499
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2504
    :cond_1
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v2

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2506
    :cond_2
    goto :goto_0
.end method

.method private offsetFullSpansForRemoval(II)V
    .locals 10

    .prologue
    .line 2466
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v6, :cond_0

    .line 2481
    :goto_0
    return-void

    .line 2469
    :cond_0
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v3, v6

    .line 2470
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_1
    move v6, v4

    if-ltz v6, :cond_3

    .line 2471
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v5, v6

    .line 2472
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 2470
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2475
    :cond_1
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 2476
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 2478
    :cond_2
    move-object v6, v5

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v8, v2

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_2

    .line 2481
    :cond_3
    goto :goto_0
.end method


# virtual methods
.method public addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .locals 9

    .prologue
    .line 2539
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2540
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2542
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    .line 2543
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 2544
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v4, v5

    .line 2545
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v5, v6, :cond_1

    .line 2549
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 2552
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v5, v6, :cond_2

    .line 2553
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2559
    :goto_1
    return-void

    .line 2543
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2558
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2559
    goto :goto_1
.end method

.method clear()V
    .locals 3

    .prologue
    .line 2447
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_0

    .line 2448
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2450
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2451
    return-void
.end method

.method ensureSize(I)V
    .locals 8

    .prologue
    .line 2435
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v3, :cond_1

    .line 2436
    move-object v3, v0

    move v4, v1

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2437
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2439
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v2, v3

    .line 2440
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2441
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v6, 0x0

    move-object v7, v2

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2442
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v4, v2

    array-length v4, v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method forceInvalidateAfter(I)I
    .locals 6

    .prologue
    .line 2381
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 2382
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2383
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v3, v4

    .line 2384
    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v5, v1

    if-lt v4, v5, :cond_0

    .line 2385
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 2382
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2389
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 10

    .prologue
    .line 2583
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v8, :cond_0

    .line 2584
    const/4 v8, 0x0

    move-object v0, v8

    .line 2598
    :goto_0
    return-object v0

    .line 2586
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 2587
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 2588
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v7, v8

    .line 2589
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v2

    if-lt v8, v9, :cond_1

    .line 2590
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 2592
    :cond_1
    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v9, v1

    if-lt v8, v9, :cond_3

    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v7

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    move v9, v3

    if-eq v8, v9, :cond_2

    move v8, v4

    if-eqz v8, :cond_3

    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-eqz v8, :cond_3

    .line 2595
    :cond_2
    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 2587
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2598
    :cond_4
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 6

    .prologue
    .line 2562
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v4, :cond_0

    .line 2563
    const/4 v4, 0x0

    move-object v0, v4

    .line 2571
    :goto_0
    return-object v0

    .line 2565
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_1
    move v4, v2

    if-ltz v4, :cond_2

    .line 2566
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-object v3, v4

    .line 2567
    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    move v5, v1

    if-ne v4, v5, :cond_1

    .line 2568
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 2565
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2571
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method getSpan(I)I
    .locals 4

    .prologue
    .line 2414
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2415
    :cond_0
    const/4 v2, -0x1

    move v0, v2

    .line 2417
    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method invalidateAfter(I)I
    .locals 7

    .prologue
    .line 2396
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v3, :cond_0

    .line 2397
    const/4 v3, -0x1

    move v0, v3

    .line 2409
    :goto_0
    return v0

    .line 2399
    :cond_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2400
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 2402
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v3

    move v2, v3

    .line 2403
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2404
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2405
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    move v0, v3

    goto :goto_0

    .line 2408
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2409
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method offsetForAddition(II)V
    .locals 9

    .prologue
    .line 2484
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2487
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2488
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v7, v7

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2490
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2492
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    .line 2493
    goto :goto_0
.end method

.method offsetForRemoval(II)V
    .locals 9

    .prologue
    .line 2454
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2457
    :cond_1
    move-object v3, v0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2458
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v7, v7

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2460
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v4, v4

    move v5, v2

    sub-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v5, v5

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 2462
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    .line 2463
    goto :goto_0
.end method

.method setSpan(ILandroid/support/v7/widget/StaggeredGridLayoutManager$Span;)V
    .locals 6

    .prologue
    .line 2422
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2423
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    move v4, v1

    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    aput v5, v3, v4

    .line 2424
    return-void
.end method

.method sizeForPosition(I)I
    .locals 5

    .prologue
    .line 2427
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    move v2, v3

    .line 2428
    :goto_0
    move v3, v2

    move v4, v1

    if-gt v3, v4, :cond_0

    .line 2429
    move v3, v2

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_0

    .line 2431
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method
