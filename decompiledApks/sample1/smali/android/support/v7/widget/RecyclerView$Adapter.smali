.class public abstract Landroid/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 5138
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5139
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    .line 5140
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5242
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5243
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5244
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 5246
    :cond_0
    move-object v3, v1

    const/4 v4, 0x1

    const/16 v5, 0x207

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5249
    const-string v3, "RV OnBindView"

    invoke-static {v3}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5250
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5251
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 5252
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5253
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 5227
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v4, "RV CreateView"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5228
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    move-object v3, v4

    .line 5229
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 5230
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5231
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 5296
    move-object v0, p0

    move v1, p1

    const-wide/16 v2, -0x1

    move-wide v0, v2

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 5268
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public final hasObservers()Z
    .locals 2

    .prologue
    .line 5406
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 2

    .prologue
    .line 5314
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    move v0, v1

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 5493
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 5494
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 5

    .prologue
    .line 5509
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5510
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 5537
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 5538
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 5

    .prologue
    .line 5602
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5603
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 6

    .prologue
    .line 5617
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 5618
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 6

    .prologue
    .line 5555
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5556
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 5585
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 5586
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 6

    .prologue
    .line 5636
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5637
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 6

    .prologue
    .line 5670
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5671
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 5

    .prologue
    .line 5653
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5654
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5452
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5217
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5218
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5461
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 5372
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5386
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5398
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5335
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 4

    .prologue
    .line 5426
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 5427
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 6

    .prologue
    .line 5280
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5281
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5284
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 5285
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 4

    .prologue
    .line 5440
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 5441
    return-void
.end method
