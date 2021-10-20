.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1342
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1348
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 1363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1364
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    .line 1370
    :goto_0
    return-void

    .line 1365
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1366
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    goto :goto_0

    .line 1368
    :cond_1
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1360
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 16

    .prologue
    .line 1326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 16

    .prologue
    .line 1326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct/range {v8 .. v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .prologue
    .line 1326
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static convertToRelativeDirection(II)I
    .locals 6

    .prologue
    .line 1427
    move v0, p0

    move v1, p1

    move v3, v0

    const v4, 0xc0c0c

    and-int/2addr v3, v4

    move v2, v3

    .line 1428
    move v3, v2

    if-nez v3, :cond_0

    .line 1429
    move v3, v0

    move v0, v3

    .line 1442
    :goto_0
    return v0

    .line 1431
    :cond_0
    move v3, v0

    move v4, v2

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    move v0, v3

    .line 1432
    move v3, v1

    if-nez v3, :cond_1

    .line 1434
    move v3, v0

    move v4, v2

    const/4 v5, 0x2

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    move v0, v3

    .line 1435
    move v3, v0

    move v0, v3

    goto :goto_0

    .line 1438
    :cond_1
    move v3, v0

    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const v5, -0xc0c0d

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v0, v3

    .line 1440
    move v3, v0

    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const v5, 0xc0c0c

    and-int/2addr v4, v5

    const/4 v5, 0x2

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    move v0, v3

    .line 1442
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method public static getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;
    .locals 1

    .prologue
    .line 1412
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I
    .locals 5

    .prologue
    .line 1790
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1791
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1794
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    move v0, v2

    return v0
.end method

.method private hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 1541
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    move v3, v4

    .line 1542
    move v4, v3

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 1547
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    move v3, v4

    .line 1548
    move v4, v3

    const v5, 0xff00

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static makeFlag(II)I
    .locals 5

    .prologue
    .line 1473
    move v0, p0

    move v1, p1

    move v2, v1

    move v3, v0

    const/16 v4, 0x8

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 5

    .prologue
    .line 1457
    move v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v3, v1

    move v4, v0

    or-int/2addr v3, v4

    invoke-static {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x2

    move v4, v0

    invoke-static {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v3

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method private onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1867
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v9, v13

    .line 1868
    const/4 v13, 0x0

    move v10, v13

    :goto_0
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_0

    .line 1869
    move-object v13, v5

    move v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v11, v13

    .line 1870
    move-object v13, v11

    invoke-virtual {v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1871
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v12, v13

    .line 1872
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1874
    move-object v13, v2

    move v14, v12

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1868
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1876
    :cond_0
    move-object v13, v4

    if-eqz v13, :cond_1

    .line 1877
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v10, v13

    .line 1878
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v6

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1879
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1881
    :cond_1
    return-void
.end method

.method private onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1886
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v9, v13

    .line 1887
    const/4 v13, 0x0

    move v10, v13

    :goto_0
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_0

    .line 1888
    move-object v13, v5

    move v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v11, v13

    .line 1889
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v12, v13

    .line 1890
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v16, v0

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1892
    move-object v13, v2

    move v14, v12

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1887
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1894
    :cond_0
    move-object v13, v4

    if-eqz v13, :cond_1

    .line 1895
    move-object v13, v2

    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    move-result v13

    move v10, v13

    .line 1896
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v6

    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1897
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1899
    :cond_1
    const/4 v13, 0x0

    move v10, v13

    .line 1900
    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    :goto_1
    move v13, v11

    if-ltz v13, :cond_4

    .line 1901
    move-object v13, v5

    move v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-object v12, v13

    .line 1902
    move-object v13, v12

    invoke-static {v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v12

    iget-boolean v13, v13, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v13, :cond_3

    .line 1903
    move-object v13, v5

    move v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .line 1900
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 1904
    :cond_3
    move-object v13, v12

    invoke-static {v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1905
    const/4 v13, 0x1

    move v10, v13

    goto :goto_2

    .line 1908
    :cond_4
    move v13, v10

    if-eqz v13, :cond_5

    .line 1909
    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1911
    :cond_5
    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    .line 1568
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method public chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 1690
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v7, v18

    .line 1691
    move/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v8, v18

    .line 1692
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 1693
    const/16 v18, -0x1

    move/from16 v10, v18

    .line 1694
    move/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 1695
    move/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v12, v18

    .line 1696
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v13, v18

    .line 1697
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_0
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1698
    move-object/from16 v18, v4

    move/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v15, v18

    .line 1699
    move/from16 v18, v11

    if-lez v18, :cond_0

    .line 1700
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v19, v7

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1701
    move/from16 v18, v16

    if-gez v18, :cond_0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1702
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1703
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1704
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1705
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1709
    :cond_0
    move/from16 v18, v11

    if-gez v18, :cond_1

    .line 1710
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v19, v5

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1711
    move/from16 v18, v16

    if-lez v18, :cond_1

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1712
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1713
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 1714
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1715
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1719
    :cond_1
    move/from16 v18, v12

    if-gez v18, :cond_2

    .line 1720
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v19, v6

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1721
    move/from16 v18, v16

    if-lez v18, :cond_2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1722
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1723
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 1724
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1725
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1730
    :cond_2
    move/from16 v18, v12

    if-lez v18, :cond_3

    .line 1731
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v19, v8

    sub-int v18, v18, v19

    move/from16 v16, v18

    .line 1732
    move/from16 v18, v16

    if-gez v18, :cond_3

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1733
    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v17, v18

    .line 1734
    move/from16 v18, v17

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1735
    move/from16 v18, v17

    move/from16 v10, v18

    .line 1736
    move-object/from16 v18, v15

    move-object/from16 v9, v18

    .line 1697
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1741
    :cond_4
    move-object/from16 v18, v9

    move-object/from16 v2, v18

    return-object v2
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 1927
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1928
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 7

    .prologue
    .line 1516
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const v5, 0x303030

    and-int/2addr v4, v5

    move v3, v4

    .line 1517
    move v4, v3

    if-nez v4, :cond_0

    .line 1518
    move v4, v1

    move v0, v4

    .line 1531
    :goto_0
    return v0

    .line 1520
    :cond_0
    move v4, v1

    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v1, v4

    .line 1521
    move v4, v2

    if-nez v4, :cond_1

    .line 1523
    move v4, v1

    move v5, v3

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    move v1, v4

    .line 1524
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 1527
    :cond_1
    move v4, v1

    move v5, v3

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    const v6, -0x303031

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    move v1, v4

    .line 1529
    move v4, v1

    move v5, v3

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    const v6, 0x303030

    and-int/2addr v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    move v1, v4

    .line 1531
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method final getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 7

    .prologue
    .line 1536
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    move v3, v4

    .line 1537
    move-object v4, v0

    move v5, v3

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .locals 8

    .prologue
    .line 2020
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    move-object v5, v6

    .line 2021
    move-object v6, v5

    if-nez v6, :cond_1

    .line 2022
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    const-wide/16 v6, 0xc8

    :goto_0
    move-wide v0, v6

    .line 2025
    :goto_1
    return-wide v0

    .line 2022
    :cond_0
    const-wide/16 v6, 0xfa

    goto :goto_0

    .line 2025
    :cond_1
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v6

    :goto_2
    move-wide v0, v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v6

    goto :goto_2
.end method

.method public getBoundingBoxMargin()I
    .locals 2

    .prologue
    .line 1631
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 3

    .prologue
    .line 1659
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    move v0, v2

    return v0
.end method

.method public abstract getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 3

    .prologue
    .line 1646
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    move v0, v2

    return v0
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 19

    .prologue
    .line 2054
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I

    move-result v15

    move v8, v15

    .line 2055
    move v15, v4

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move v9, v15

    .line 2056
    move v15, v4

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    float-to-int v15, v15

    move v10, v15

    .line 2058
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v17, v3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move v11, v15

    .line 2059
    move v15, v10

    move/from16 v16, v8

    mul-int v15, v15, v16

    int-to-float v15, v15

    sget-object v16, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v17, v11

    invoke-interface/range {v16 .. v17}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v15, v15

    move v12, v15

    .line 2062
    move-wide v15, v6

    const-wide/16 v17, 0x7d0

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 2063
    const/high16 v15, 0x3f800000    # 1.0f

    move v13, v15

    .line 2067
    :goto_0
    move v15, v12

    int-to-float v15, v15

    sget-object v16, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v17, v13

    invoke-interface/range {v16 .. v17}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v15, v15

    move v14, v15

    .line 2069
    move v15, v14

    if-nez v15, :cond_2

    .line 2070
    move v15, v4

    if-lez v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    move v1, v15

    .line 2072
    :goto_2
    return v1

    .line 2065
    :cond_0
    move-wide v15, v6

    long-to-float v15, v15

    const/high16 v16, 0x44fa0000    # 2000.0f

    div-float v15, v15, v16

    move v13, v15

    goto :goto_0

    .line 2070
    :cond_1
    const/4 v15, -0x1

    goto :goto_1

    .line 2072
    :cond_2
    move v15, v14

    move v1, v15

    goto :goto_2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 2

    .prologue
    .line 1620
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 2

    .prologue
    .line 1605
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16

    .prologue
    .line 1960
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    sget-object v8, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-interface/range {v8 .. v15}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 1962
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 16

    .prologue
    .line 1994
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    sget-object v8, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-interface/range {v8 .. v15}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 1996
    return-void
.end method

.method public abstract onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .locals 16

    .prologue
    .line 1833
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v11

    move-object v8, v11

    .line 1834
    move-object v11, v8

    instance-of v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v11, :cond_0

    .line 1835
    move-object v11, v8

    check-cast v11, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v4

    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v14, v6

    move v15, v7

    invoke-interface {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1862
    :goto_0
    return-void

    .line 1841
    :cond_0
    move-object v11, v8

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1842
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 1843
    move v11, v9

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    if-gt v11, v12, :cond_1

    .line 1844
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1846
    :cond_1
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1847
    move v11, v10

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    if-lt v11, v12, :cond_2

    .line 1848
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1852
    :cond_2
    move-object v11, v8

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1853
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 1854
    move v11, v9

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v12

    if-gt v11, v12, :cond_3

    .line 1855
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1857
    :cond_3
    move-object v11, v8

    move-object v12, v4

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 1858
    move v11, v10

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    if-lt v11, v12, :cond_4

    .line 1859
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1862
    :cond_4
    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .prologue
    .line 1784
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1785
    sget-object v3, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1787
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method
