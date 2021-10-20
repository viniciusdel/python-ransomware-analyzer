.class public abstract Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8789
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 8792
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .prologue
    .line 8796
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 8801
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 8802
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .prologue
    .line 8806
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .prologue
    .line 8814
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .prologue
    .line 8810
    return-void
.end method
