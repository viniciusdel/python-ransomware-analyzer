.class public Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 4068
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4069
    move-object v1, v0

    new-instance v2, Landroid/util/SparseArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4071
    move-object v1, v0

    new-instance v2, Landroid/util/SparseIntArray;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 4072
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4159
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v2, v3

    .line 4160
    move-object v3, v2

    if-nez v3, :cond_0

    .line 4161
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 4162
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4163
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 4164
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    move v4, v1

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4167
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 6

    .prologue
    .line 4126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4127
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 4077
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4078
    return-void
.end method

.method detach()V
    .locals 5

    .prologue
    .line 4130
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4131
    return-void
.end method

.method public getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    .prologue
    .line 4091
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object v2, v5

    .line 4092
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4093
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 4094
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v5

    .line 4095
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    .line 4096
    move-object v5, v4

    move-object v0, v5

    .line 4098
    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 6

    .prologue
    .line 4147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 4148
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 4150
    :cond_0
    move v4, v3

    if-nez v4, :cond_1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v4, :cond_1

    .line 4151
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 4153
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 4154
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 4156
    :cond_2
    return-void
.end method

.method public putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .prologue
    .line 4113
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    move v2, v4

    .line 4114
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 4115
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 4123
    :goto_0
    return-void

    .line 4121
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 4122
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 4123
    goto :goto_0
.end method

.method public setMaxRecycledViews(II)V
    .locals 7

    .prologue
    .line 4081
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 4082
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v3, v4

    .line 4083
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 4084
    :goto_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    if-le v4, v5, :cond_0

    .line 4085
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 4088
    :cond_0
    return-void
.end method

.method size()I
    .locals 6

    .prologue
    .line 4102
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 4103
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4104
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v3, v4

    .line 4105
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 4106
    move v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 4103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4109
    :cond_1
    move v4, v1

    move v0, v4

    return v0
.end method
