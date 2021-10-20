.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 684
    move-object v1, v0

    new-instance v2, Landroid/util/SparseIntArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 686
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 8

    .prologue
    .line 792
    move-object v0, p0

    move v1, p1

    const/4 v6, 0x0

    move v2, v6

    .line 793
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    .line 795
    :goto_0
    move v6, v2

    move v7, v3

    if-gt v6, v7, :cond_1

    .line 796
    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 797
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move v5, v6

    .line 798
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 799
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v2, v6

    .line 803
    :goto_1
    goto :goto_0

    .line 801
    :cond_0
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    goto :goto_1

    .line 804
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 805
    move v6, v4

    if-ltz v6, :cond_2

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 806
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    move v0, v6

    .line 808
    :goto_2
    return v0

    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_2
.end method

.method getCachedSpanIndex(II)I
    .locals 8

    .prologue
    .line 725
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v5, :cond_0

    .line 726
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    move v0, v5

    .line 734
    :goto_0
    return v0

    .line 728
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    move v3, v5

    .line 729
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 730
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 732
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    move v4, v5

    .line 733
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public getSpanGroupIndex(II)I
    .locals 10

    .prologue
    .line 822
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v8, 0x0

    move v3, v8

    .line 823
    const/4 v8, 0x0

    move v4, v8

    .line 824
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v5, v8

    .line 825
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_2

    .line 826
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 827
    move v8, v3

    move v9, v7

    add-int/2addr v8, v9

    move v3, v8

    .line 828
    move v8, v3

    move v9, v2

    if-ne v8, v9, :cond_1

    .line 829
    const/4 v8, 0x0

    move v3, v8

    .line 830
    add-int/lit8 v4, v4, 0x1

    .line 825
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 831
    :cond_1
    move v8, v3

    move v9, v2

    if-le v8, v9, :cond_0

    .line 833
    move v8, v7

    move v3, v8

    .line 834
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 837
    :cond_2
    move v8, v3

    move v9, v5

    add-int/2addr v8, v9

    move v9, v2

    if-le v8, v9, :cond_3

    .line 838
    add-int/lit8 v4, v4, 0x1

    .line 840
    :cond_3
    move v8, v4

    move v0, v8

    return v0
.end method

.method public getSpanIndex(II)I
    .locals 11

    .prologue
    .line 761
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v3, v8

    .line 762
    move v8, v3

    move v9, v2

    if-ne v8, v9, :cond_0

    .line 763
    const/4 v8, 0x0

    move v0, v8

    .line 788
    :goto_0
    return v0

    .line 765
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    .line 766
    const/4 v8, 0x0

    move v5, v8

    .line 768
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 769
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v8

    move v6, v8

    .line 770
    move v8, v6

    if-ltz v8, :cond_1

    .line 771
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v9

    add-int/2addr v8, v9

    move v4, v8

    .line 772
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 775
    :cond_1
    move v8, v5

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 776
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    move v7, v8

    .line 777
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 778
    move v8, v4

    move v9, v2

    if-ne v8, v9, :cond_3

    .line 779
    const/4 v8, 0x0

    move v4, v8

    .line 775
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 780
    :cond_3
    move v8, v4

    move v9, v2

    if-le v8, v9, :cond_2

    .line 782
    move v8, v7

    move v4, v8

    goto :goto_2

    .line 785
    :cond_4
    move v8, v4

    move v9, v3

    add-int/2addr v8, v9

    move v9, v2

    if-gt v8, v9, :cond_5

    .line 786
    move v8, v4

    move v0, v8

    goto :goto_0

    .line 788
    :cond_5
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 2

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 713
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 2

    .prologue
    .line 721
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    move v0, v1

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 4

    .prologue
    .line 704
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 705
    return-void
.end method
