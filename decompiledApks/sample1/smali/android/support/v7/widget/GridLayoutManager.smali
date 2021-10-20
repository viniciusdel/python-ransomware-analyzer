.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field static final MAIN_DIR_SPEC:I

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayoutManager;->MAIN_DIR_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 48
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    move-object v3, v0

    new-instance v4, Landroid/util/SparseIntArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 89
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 48
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    move-object v5, v0

    new-instance v6, Landroid/util/SparseIntArray;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 102
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 77
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v6

    move-object v5, v6

    .line 78
    move-object v6, v0

    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 79
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .locals 20

    .prologue
    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v14, v5

    if-eqz v14, :cond_0

    .line 615
    const/4 v14, 0x0

    move v8, v14

    .line 616
    move v14, v3

    move v9, v14

    .line 617
    const/4 v14, 0x1

    move v10, v14

    .line 623
    :goto_0
    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 624
    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v6, v14

    .line 625
    const/4 v14, -0x1

    move v7, v14

    .line 630
    :goto_1
    move v14, v8

    move v11, v14

    :goto_2
    move v14, v11

    move v15, v9

    if-eq v14, v15, :cond_3

    .line 631
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move v15, v11

    aget-object v14, v14, v15

    move-object v12, v14

    .line 632
    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v13, v14

    .line 633
    move-object v14, v13

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v18

    invoke-direct/range {v15 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v15

    invoke-static {v14, v15}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    move-result v14

    .line 634
    move v14, v7

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    move-object v14, v13

    invoke-static {v14}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    .line 635
    move-object v14, v13

    move v15, v6

    move-object/from16 v16, v13

    invoke-static/range {v16 .. v16}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    move-result v14

    .line 639
    :goto_3
    move v14, v6

    move v15, v7

    move-object/from16 v16, v13

    invoke-static/range {v16 .. v16}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v16

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v6, v14

    .line 630
    move v14, v11

    move v15, v10

    add-int/2addr v14, v15

    move v11, v14

    goto :goto_2

    .line 619
    :cond_0
    move v14, v3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v8, v14

    .line 620
    const/4 v14, -0x1

    move v9, v14

    .line 621
    const/4 v14, -0x1

    move v10, v14

    goto :goto_0

    .line 627
    :cond_1
    const/4 v14, 0x0

    move v6, v14

    .line 628
    const/4 v14, 0x1

    move v7, v14

    goto :goto_1

    .line 637
    :cond_2
    move-object v14, v13

    move v15, v6

    invoke-static {v14, v15}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    move-result v14

    goto :goto_3

    .line 641
    :cond_3
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 8

    .prologue
    .line 187
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    move v1, v5

    .line 188
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 189
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v3, v5

    .line 190
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    move v4, v5

    .line 191
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 11

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    if-ne v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    move v9, v1

    if-eq v8, v9, :cond_1

    .line 279
    :cond_0
    move-object v8, v0

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    iput-object v9, v8, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 281
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 282
    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    div-int/2addr v8, v9

    move v2, v8

    .line 283
    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    rem-int/2addr v8, v9

    move v3, v8

    .line 284
    const/4 v8, 0x0

    move v4, v8

    .line 285
    const/4 v8, 0x0

    move v5, v8

    .line 286
    const/4 v8, 0x1

    move v6, v8

    :goto_0
    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-gt v8, v9, :cond_3

    .line 287
    move v8, v2

    move v7, v8

    .line 288
    move v8, v5

    move v9, v3

    add-int/2addr v8, v9

    move v5, v8

    .line 289
    move v8, v5

    if-lez v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v9, v5

    sub-int/2addr v8, v9

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 290
    add-int/lit8 v7, v7, 0x1

    .line 291
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v8, v9

    move v5, v8

    .line 293
    :cond_2
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 294
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move v9, v6

    move v10, v4

    aput v10, v8, v9

    .line 286
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 296
    :cond_3
    return-void
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 183
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 184
    return-void
.end method

.method private ensureAnchorIsInFirstSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 10

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    move v4, v5

    .line 334
    :goto_0
    move v5, v4

    if-lez v5, :cond_0

    move-object v5, v3

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v5, :cond_0

    .line 335
    move-object v5, v3

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 336
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    move v4, v5

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method private ensureViewSet()V
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v1, v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v1, v2, :cond_1

    .line 311
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, v1, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 313
    :cond_1
    return-void
.end method

.method private getMainDirSpec(I)I
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 577
    sget v2, Landroid/support/v7/widget/GridLayoutManager;->MAIN_DIR_SPEC:I

    move v0, v2

    .line 579
    :goto_0
    return v0

    :cond_0
    move v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 9

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 377
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    .line 388
    :goto_0
    return v0

    .line 379
    :cond_0
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v5

    move v4, v5

    .line 380
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 385
    const-string v5, "GridLayoutManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find span size for pre layout position. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 386
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 388
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 393
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    .line 409
    :goto_0
    return v0

    .line 395
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 396
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 397
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 399
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 400
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 405
    const-string v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 407
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 409
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 10

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v6

    if-nez v6, :cond_0

    .line 414
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    .line 430
    :goto_0
    return v0

    .line 416
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    move v7, v3

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move v4, v6

    .line 417
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 418
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 420
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v6

    move v5, v6

    .line 421
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 426
    const-string v6, "GridLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 428
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 430
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 11

    .prologue
    .line 585
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 586
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v5, v6

    .line 587
    move v6, v4

    if-nez v6, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 588
    :cond_0
    move-object v6, v0

    move v7, v2

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result v6

    move v2, v6

    .line 591
    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_3

    .line 592
    :cond_2
    move-object v6, v0

    move v7, v3

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result v6

    move v3, v6

    .line 595
    :cond_3
    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 596
    return-void
.end method

.method private updateMeasurements()V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 273
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 274
    return-void

    .line 271
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 7

    .prologue
    .line 599
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 600
    move v5, v1

    move v0, v5

    .line 607
    :goto_0
    return v0

    .line 602
    :cond_0
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v4, v5

    .line 603
    move v5, v4

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1

    move v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_2

    .line 604
    :cond_1
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    move v6, v3

    sub-int/2addr v5, v6

    move v6, v4

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 607
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move v0, v2

    return v0
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 21

    .prologue
    .line 343
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 344
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 345
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 346
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    move/from16 v10, v17

    .line 347
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move/from16 v11, v17

    .line 348
    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_0
    move/from16 v12, v17

    .line 349
    move/from16 v17, v5

    move/from16 v13, v17

    :goto_1
    move/from16 v17, v13

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 350
    move-object/from16 v17, v2

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v14, v17

    .line 351
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v15, v17

    .line 352
    move/from16 v17, v15

    if-ltz v17, :cond_0

    move/from16 v17, v15

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 353
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v15

    invoke-direct/range {v17 .. v20}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v17

    move/from16 v16, v17

    .line 354
    move/from16 v17, v16

    if-eqz v17, :cond_2

    .line 349
    :cond_0
    :goto_2
    move/from16 v17, v13

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v13, v17

    goto :goto_1

    .line 348
    :cond_1
    const/16 v17, -0x1

    goto :goto_0

    .line 357
    :cond_2
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 358
    move-object/from16 v17, v8

    if-nez v17, :cond_0

    .line 359
    move-object/from16 v17, v14

    move-object/from16 v8, v17

    goto :goto_2

    .line 361
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 363
    :cond_4
    move-object/from16 v17, v9

    if-nez v17, :cond_0

    .line 364
    move-object/from16 v17, v14

    move-object/from16 v9, v17

    goto :goto_2

    .line 367
    :cond_5
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    .line 371
    :goto_3
    return-object v2

    :cond_6
    move-object/from16 v17, v9

    if-eqz v17, :cond_7

    move-object/from16 v17, v9

    :goto_4
    move-object/from16 v2, v17

    goto :goto_3

    :cond_7
    move-object/from16 v17, v8

    goto :goto_4
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 224
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 8

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 6

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 236
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    .line 238
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 135
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 140
    :goto_0
    return v0

    .line 137
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 138
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 140
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_0

    .line 123
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v0, v3

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 126
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 128
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move v0, v1

    return v0
.end method

.method public getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-object v0, v1

    return-object v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 28

    .prologue
    .line 436
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    :goto_0
    move/from16 v7, v20

    .line 438
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 439
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 440
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v10, v20

    .line 441
    move/from16 v20, v7

    if-nez v20, :cond_0

    .line 442
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v20

    move/from16 v11, v20

    .line 443
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v20

    move/from16 v12, v20

    .line 444
    move/from16 v20, v11

    move/from16 v21, v12

    add-int v20, v20, v21

    move/from16 v10, v20

    .line 446
    :cond_0
    :goto_1
    move/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v20

    if-eqz v20, :cond_3

    move/from16 v20, v10

    if-lez v20, :cond_3

    .line 447
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v20, v0

    move/from16 v11, v20

    .line 448
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v11

    invoke-direct/range {v20 .. v23}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v20

    move/from16 v12, v20

    .line 449
    move/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 450
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Item at position "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " requires "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v12

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " spans but GridLayoutManager has only "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " spans."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 436
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 454
    :cond_2
    move/from16 v20, v10

    move/from16 v21, v12

    sub-int v20, v20, v21

    move/from16 v10, v20

    .line 455
    move/from16 v20, v10

    if-gez v20, :cond_4

    .line 467
    :cond_3
    :goto_2
    move/from16 v20, v8

    if-nez v20, :cond_6

    .line 468
    move-object/from16 v20, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 573
    :goto_3
    return-void

    .line 458
    :cond_4
    move-object/from16 v20, v5

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v13, v20

    .line 459
    move-object/from16 v20, v13

    if-nez v20, :cond_5

    .line 460
    goto :goto_2

    .line 462
    :cond_5
    move/from16 v20, v9

    move/from16 v21, v12

    add-int v20, v20, v21

    move/from16 v9, v20

    .line 463
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v21, v8

    move-object/from16 v22, v13

    aput-object v22, v20, v21

    .line 464
    add-int/lit8 v8, v8, 0x1

    .line 465
    goto/16 :goto_1

    .line 472
    :cond_6
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 475
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v7

    invoke-direct/range {v20 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    .line 476
    const/16 v20, 0x0

    move/from16 v12, v20

    :goto_4
    move/from16 v20, v12

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 477
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v21, v12

    aget-object v20, v20, v21

    move-object/from16 v13, v20

    .line 478
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    .line 479
    move/from16 v20, v7

    if-eqz v20, :cond_8

    .line 480
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 492
    :goto_5
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v14, v20

    .line 493
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    invoke-static/range {v21 .. v21}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v21

    move-object/from16 v22, v14

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    add-int v21, v21, v22

    aget v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    aget v21, v21, v22

    sub-int v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move/from16 v15, v20

    .line 497
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 498
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v24, v14

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/GridLayoutManager;->getMainDirSpec(I)I

    move-result v23

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 502
    :goto_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    move/from16 v16, v20

    .line 503
    move/from16 v20, v16

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 504
    move/from16 v20, v16

    move/from16 v11, v20

    .line 476
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 482
    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 485
    :cond_9
    move/from16 v20, v7

    if-eqz v20, :cond_a

    .line 486
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 488
    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 500
    :cond_b
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/GridLayoutManager;->getMainDirSpec(I)I

    move-result v22

    move/from16 v23, v15

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_6

    .line 509
    :cond_c
    move-object/from16 v20, v2

    move/from16 v21, v11

    invoke-direct/range {v20 .. v21}, Landroid/support/v7/widget/GridLayoutManager;->getMainDirSpec(I)I

    move-result v20

    move/from16 v12, v20

    .line 510
    const/16 v20, 0x0

    move/from16 v13, v20

    :goto_7
    move/from16 v20, v13

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 511
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v14, v20

    .line 512
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v20

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 513
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v15, v20

    .line 514
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v20, v0

    move-object/from16 v21, v15

    invoke-static/range {v21 .. v21}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v21

    move-object/from16 v22, v15

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    add-int v21, v21, v22

    aget v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    aget v21, v21, v22

    sub-int v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move/from16 v16, v20

    .line 518
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 519
    move-object/from16 v20, v2

    move-object/from16 v21, v14

    move/from16 v22, v16

    move/from16 v23, v12

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 510
    :cond_d
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 521
    :cond_e
    move-object/from16 v20, v2

    move-object/from16 v21, v14

    move/from16 v22, v12

    move/from16 v23, v16

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_8

    .line 526
    :cond_f
    move-object/from16 v20, v6

    move/from16 v21, v11

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 528
    const/16 v20, 0x0

    move/from16 v13, v20

    const/16 v20, 0x0

    move/from16 v14, v20

    const/16 v20, 0x0

    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    .line 529
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 530
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 531
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v20, v0

    move/from16 v16, v20

    .line 532
    move/from16 v20, v16

    move/from16 v21, v11

    sub-int v20, v20, v21

    move/from16 v15, v20

    .line 546
    :goto_9
    const/16 v20, 0x0

    move/from16 v17, v20

    :goto_a
    move/from16 v20, v17

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 547
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v21, v17

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 548
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object/from16 v19, v20

    .line 549
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 550
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v21, v0

    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v13, v20

    .line 551
    move/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v21, v0

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v21

    add-int v20, v20, v21

    move/from16 v14, v20

    .line 558
    :goto_b
    move-object/from16 v20, v2

    move-object/from16 v21, v18

    move/from16 v22, v13

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v23, v15

    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v24, v14

    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v25, v16

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {v20 .. v25}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 567
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v20

    if-nez v20, :cond_10

    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 568
    :cond_10
    move-object/from16 v20, v6

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 570
    :cond_11
    move-object/from16 v20, v6

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    move/from16 v21, v0

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->isFocusable()Z

    move-result v22

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 546
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .line 534
    :cond_12
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v20, v0

    move/from16 v15, v20

    .line 535
    move/from16 v20, v15

    move/from16 v21, v11

    add-int v20, v20, v21

    move/from16 v16, v20

    goto/16 :goto_9

    .line 538
    :cond_13
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 539
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v20, v0

    move/from16 v14, v20

    .line 540
    move/from16 v20, v14

    move/from16 v21, v11

    sub-int v20, v20, v21

    move/from16 v13, v20

    goto/16 :goto_9

    .line 542
    :cond_14
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v20, v0

    move/from16 v13, v20

    .line 543
    move/from16 v20, v13

    move/from16 v21, v11

    add-int v20, v20, v21

    move/from16 v14, v20

    goto/16 :goto_9

    .line 553
    :cond_15
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v21, v0

    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v15, v20

    .line 554
    move/from16 v20, v15

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v21, v0

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v21

    add-int v20, v20, v21

    move/from16 v16, v20

    goto/16 :goto_b

    .line 572
    :cond_16
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    goto/16 :goto_3
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 8

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 302
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 303
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInFirstSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 306
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 307
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 15

    .prologue
    .line 146
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v5, v8

    .line 147
    move-object v8, v5

    instance-of v8, v8, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v8, :cond_0

    .line 148
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    invoke-super {v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object v8, v5

    check-cast v8, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    move-object v6, v8

    .line 152
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v8

    move v7, v8

    .line 153
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v8, :cond_2

    .line 154
    move-object v8, v4

    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v9

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v10

    move v11, v7

    const/4 v12, 0x1

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    move-object v13, v6

    invoke-virtual {v13}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 164
    :goto_2
    goto :goto_0

    .line 154
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 159
    :cond_2
    move-object v8, v4

    move v9, v7

    const/4 v10, 0x1

    move-object v11, v6

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v11

    move-object v12, v6

    invoke-virtual {v12}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    move-object v13, v6

    invoke-virtual {v13}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 199
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 204
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 220
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 209
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 215
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 171
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 175
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 176
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 179
    :cond_1
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 319
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 320
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    .line 326
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 327
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 328
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setSpanCount(I)V
    .locals 7

    .prologue
    .line 663
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_0

    .line 673
    :goto_0
    return-void

    .line 666
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 667
    move v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 668
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span count should be at least 1. Provided "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 672
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 673
    goto :goto_0
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 255
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 117
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 846
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
