.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field private mInPreLayout:Z

.field mItemCount:I

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I

.field private mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9343
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9345
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 9352
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 9357
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 9363
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 9365
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 9367
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 9369
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 9371
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 9373
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    return-void
.end method

.method static synthetic access$1802(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    move v0, v2

    return v0
.end method

.method static synthetic access$1812(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    move v0, v2

    return v0
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .prologue
    .line 9343
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1902(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .prologue
    .line 9343
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2102(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .prologue
    .line 9343
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .prologue
    .line 9343
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .prologue
    .line 9343
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2502(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$2602(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    move v0, v2

    return v0
.end method

.method static synthetic access$5602(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 7

    .prologue
    .line 9343
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    move v0, v2

    return v0
.end method


# virtual methods
.method public didStructureChange()Z
    .locals 2

    .prologue
    .line 9478
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    move v0, v1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 9432
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 9433
    const/4 v2, 0x0

    move-object v0, v2

    .line 9435
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 9506
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v1, v2

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 2

    .prologue
    .line 9461
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    move v0, v1

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 3

    .prologue
    .line 9470
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPreLayout()Z
    .locals 2

    .prologue
    .line 9386
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    move v0, v1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 9447
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 9448
    move-object v3, v0

    new-instance v4, Landroid/util/SparseArray;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 9450
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9451
    return-void
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 9417
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 9421
    :goto_0
    return-void

    .line 9420
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 9421
    goto :goto_0
.end method

.method reset()Landroid/support/v7/widget/RecyclerView$State;
    .locals 3

    .prologue
    .line 9376
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 9377
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 9378
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9380
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 9381
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 9382
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9513
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State{mTargetPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mItemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreviousLayoutItemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStructureChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInPreLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunSimpleAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunPredictiveAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 2

    .prologue
    .line 9397
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    move v0, v1

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 2

    .prologue
    .line 9408
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    move v0, v1

    return v0
.end method
