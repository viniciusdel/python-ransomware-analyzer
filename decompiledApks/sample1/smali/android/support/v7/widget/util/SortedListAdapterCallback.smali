.class public abstract Landroid/support/v7/widget/util/SortedListAdapterCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 38
    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 58
    return-void
.end method

.method public onInserted(II)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 43
    return-void
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 53
    return-void
.end method

.method public onRemoved(II)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 48
    return-void
.end method
