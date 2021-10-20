.class Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 1864
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1883
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1924
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1931
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 1942
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 7

    .prologue
    .line 1974
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    .line 1975
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_2

    .line 1976
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v5

    .line 1977
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v5

    .line 1978
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1975
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1981
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1982
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1983
    move-object v5, v3

    move-object v0, v5

    .line 1986
    :goto_1
    return-object v0

    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 3

    .prologue
    .line 1990
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1991
    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1994
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1995
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1996
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2001
    :goto_0
    return-void

    .line 1998
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0
.end method

.method hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 4

    .prologue
    .line 1948
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 5

    .prologue
    .line 2033
    move-object v0, p0

    const-string v1, "LinearLayoutManager#LayoutState"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ind:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", layoutDir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2035
    return-void
.end method

.method next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 7

    .prologue
    .line 1958
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1959
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 1963
    :goto_0
    return-object v0

    .line 1961
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1962
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1963
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 11

    .prologue
    .line 2004
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v2, v9

    .line 2005
    const/4 v9, 0x0

    move-object v3, v9

    .line 2006
    const v9, 0x7fffffff

    move v4, v9

    .line 2010
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_3

    .line 2011
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v9

    .line 2012
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v9

    .line 2013
    move-object v9, v6

    move-object v10, v1

    if-eq v9, v10, :cond_0

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2010
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2016
    :cond_1
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v9, v10

    move v8, v9

    .line 2018
    move v9, v8

    if-gez v9, :cond_2

    .line 2019
    goto :goto_1

    .line 2021
    :cond_2
    move v9, v8

    move v10, v4

    if-ge v9, v10, :cond_0

    .line 2022
    move-object v9, v6

    move-object v3, v9

    .line 2023
    move v9, v8

    move v4, v9

    .line 2024
    move v9, v8

    if-nez v9, :cond_0

    .line 2029
    :cond_3
    move-object v9, v3

    move-object v0, v9

    return-object v0
.end method
