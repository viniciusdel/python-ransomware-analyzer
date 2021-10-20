.class Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 7

    .prologue
    .line 2103
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2097
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2098
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2099
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2100
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2104
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2105
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;ILandroid/support/v7/widget/StaggeredGridLayoutManager$1;)V
    .locals 7

    .prologue
    .line 2094
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 2094
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2188
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2189
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2190
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 2191
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2192
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2193
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2195
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2196
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2198
    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .locals 10

    .prologue
    .line 2203
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    if-eqz v4, :cond_0

    .line 2204
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v4

    move v3, v4

    .line 2208
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2209
    move v4, v3

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_1

    .line 2220
    :goto_1
    return-void

    .line 2206
    :cond_0
    move-object v4, v0

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 2212
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    if-lt v4, v5, :cond_3

    :cond_2
    move v4, v1

    if-nez v4, :cond_4

    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 2214
    :cond_3
    goto :goto_1

    .line 2216
    :cond_4
    move v4, v2

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 2217
    move v4, v3

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 2219
    :cond_5
    move-object v4, v0

    move-object v5, v0

    move v6, v3

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2220
    goto :goto_1
.end method

.method calculateCachedEnd()V
    .locals 9

    .prologue
    .line 2153
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 2154
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 2155
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2156
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 2157
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    move-object v3, v4

    .line 2159
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2160
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2163
    :cond_0
    return-void
.end method

.method calculateCachedStart()V
    .locals 9

    .prologue
    .line 2119
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v1, v4

    .line 2120
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v2, v4

    .line 2121
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2122
    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_0

    .line 2123
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v4

    move-object v3, v4

    .line 2125
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2126
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2129
    :cond_0
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    .line 2223
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2224
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2225
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2226
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2327
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2339
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    .line 2333
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$600(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v1

    goto :goto_0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 13

    .prologue
    .line 2345
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    move v4, v11

    .line 2346
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v11

    move v5, v11

    .line 2347
    move v11, v2

    move v12, v1

    if-le v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    move v6, v11

    .line 2348
    move v11, v1

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v2

    if-eq v11, v12, :cond_3

    .line 2349
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object v8, v11

    .line 2350
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    move v9, v11

    .line 2351
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    move v10, v11

    .line 2352
    move v11, v9

    move v12, v5

    if-ge v11, v12, :cond_2

    move v11, v10

    move v12, v4

    if-le v11, v12, :cond_2

    .line 2353
    move v11, v3

    if-eqz v11, :cond_1

    .line 2354
    move v11, v9

    move v12, v4

    if-lt v11, v12, :cond_2

    move v11, v10

    move v12, v5

    if-gt v11, v12, :cond_2

    .line 2355
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v0, v11

    .line 2362
    :goto_2
    return v0

    .line 2347
    :cond_0
    const/4 v11, -0x1

    goto :goto_0

    .line 2358
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move v0, v11

    goto :goto_2

    .line 2348
    :cond_2
    move v11, v7

    move v12, v6

    add-int/2addr v11, v12

    move v7, v11

    goto :goto_1

    .line 2362
    :cond_3
    const/4 v11, -0x1

    move v0, v11

    goto :goto_2
.end method

.method public getDeletedSize()I
    .locals 2

    .prologue
    .line 2265
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move v0, v1

    return v0
.end method

.method getEndLine()I
    .locals 3

    .prologue
    .line 2167
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2168
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v1

    .line 2171
    :goto_0
    return v0

    .line 2170
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2171
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v1

    goto :goto_0
.end method

.method getEndLine(I)I
    .locals 5

    .prologue
    .line 2141
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    .line 2142
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v3

    .line 2149
    :goto_0
    return v0

    .line 2144
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v3

    .line 2145
    move v3, v2

    if-nez v3, :cond_1

    .line 2146
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 2148
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2149
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v0, v3

    goto :goto_0
.end method

.method getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .prologue
    .line 2269
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v0, v2

    return-object v0
.end method

.method getNormalizedOffset(III)I
    .locals 7

    .prologue
    .line 2283
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2284
    const/4 v5, 0x0

    move v0, v5

    .line 2297
    :goto_0
    return v0

    .line 2286
    :cond_0
    move v5, v1

    if-gez v5, :cond_3

    .line 2287
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v5

    move v6, v3

    sub-int/2addr v5, v6

    move v4, v5

    .line 2288
    move v5, v4

    if-gtz v5, :cond_1

    .line 2289
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2291
    :cond_1
    move v5, v1

    neg-int v5, v5

    move v6, v4

    if-le v5, v6, :cond_2

    move v5, v4

    neg-int v5, v5

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v5, v1

    goto :goto_1

    .line 2293
    :cond_3
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 2294
    move v5, v4

    if-gtz v5, :cond_4

    .line 2295
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2297
    :cond_4
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_5

    move v5, v4

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_5
    move v5, v1

    goto :goto_2
.end method

.method getStartLine()I
    .locals 3

    .prologue
    .line 2133
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 2134
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v1

    .line 2137
    :goto_0
    return v0

    .line 2136
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2137
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v1

    goto :goto_0
.end method

.method getStartLine(I)I
    .locals 4

    .prologue
    .line 2108
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 2109
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v2

    .line 2115
    :goto_0
    return v0

    .line 2111
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2112
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 2114
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2115
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v0, v2

    goto :goto_0
.end method

.method invalidateCache()V
    .locals 3

    .prologue
    .line 2229
    move-object v0, p0

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2230
    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2231
    return-void
.end method

.method isEmpty(II)Z
    .locals 8

    .prologue
    .line 2309
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2310
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 2311
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 2312
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    move v7, v2

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    move v7, v1

    if-le v6, v7, :cond_0

    .line 2314
    const/4 v6, 0x0

    move v0, v6

    .line 2317
    :goto_1
    return v0

    .line 2310
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2317
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1
.end method

.method onOffset(I)V
    .locals 6

    .prologue
    .line 2273
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 2274
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2276
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    .line 2277
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2279
    :cond_1
    return-void
.end method

.method popEnd()V
    .locals 9

    .prologue
    .line 2238
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 2239
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 2240
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v4

    move-object v3, v4

    .line 2241
    move-object v4, v3

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2242
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2243
    :cond_0
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2245
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2246
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2248
    :cond_2
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2249
    return-void
.end method

.method popStart()V
    .locals 8

    .prologue
    .line 2252
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .line 2253
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2254
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2255
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2256
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2258
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2259
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2261
    :cond_2
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2262
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 2175
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 2176
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2177
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2178
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2179
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2180
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2182
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2183
    :cond_1
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroid/support/v7/widget/OrientationHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2185
    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 8

    .prologue
    .line 2234
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2235
    return-void
.end method
