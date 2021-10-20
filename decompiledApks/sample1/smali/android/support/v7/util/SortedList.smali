.class public Landroid/support/v7/util/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/SortedList$BatchedCallback;,
        Landroid/support/v7/util/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

.field private mCallback:Landroid/support/v7/util/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mMergedSize:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    .line 94
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 95
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 96
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/util/SortedList;->mSize:I

    .line 97
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v5

    move v3, v5

    .line 393
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 394
    const/4 v5, 0x0

    move v3, v5

    .line 409
    :cond_0
    move-object v5, v0

    move v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/util/SortedList;->addToData(ILjava/lang/Object;)V

    .line 410
    move v5, v2

    if-eqz v5, :cond_1

    .line 411
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v6, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 413
    :cond_1
    move v5, v3

    move v0, v5

    :goto_0
    return v0

    .line 395
    :cond_2
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge v5, v6, :cond_0

    .line 396
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 397
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 400
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v6, v3

    move-object v7, v1

    aput-object v7, v5, v6

    .line 401
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 403
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v6, v3

    move-object v7, v1

    aput-object v7, v5, v6

    .line 404
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v6, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 405
    move v5, v3

    move v0, v5

    goto :goto_0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 190
    move v4, v2

    if-eqz v4, :cond_0

    .line 191
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 194
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 195
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 196
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList;->mSize:I

    iput v5, v4, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    .line 198
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 200
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/util/SortedList;->deduplicate([Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 201
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v4, :cond_3

    .line 202
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 203
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/util/SortedList;->mSize:I

    .line 204
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 205
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 210
    :goto_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    .line 212
    move v4, v2

    if-eqz v4, :cond_1

    .line 213
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    .line 215
    :cond_1
    return-void

    .line 189
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 207
    :cond_3
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v7/util/SortedList;->merge([Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private addToData(ILjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 643
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList;->mSize:I

    if-le v4, v5, :cond_0

    .line 644
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot add item to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 647
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mSize:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 649
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v5, v5

    const/16 v6, 0xa

    add-int/lit8 v5, v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 650
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 652
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v3

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mSize:I

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 659
    :goto_0
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/support/v7/util/SortedList;->mSize:I

    .line 660
    return-void

    .line 656
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mSize:I

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    goto :goto_0
.end method

.method private deduplicate([Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    array-length v8, v8

    if-nez v8, :cond_0

    .line 225
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Input array must be non-empty"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 230
    :cond_0
    const/4 v8, 0x0

    move v2, v8

    .line 231
    const/4 v8, 0x1

    move v3, v8

    .line 233
    const/4 v8, 0x1

    move v4, v8

    :goto_0
    move v8, v4

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_6

    .line 234
    move-object v8, v1

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 236
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v6, v8

    .line 237
    move v8, v6

    if-lez v8, :cond_1

    .line 238
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Input must be sorted in ascending order."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 241
    :cond_1
    move v8, v6

    if-nez v8, :cond_4

    .line 243
    move-object v8, v0

    move-object v9, v5

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/util/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    move v7, v8

    .line 244
    move v8, v7

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 246
    move-object v8, v1

    move v9, v7

    move-object v10, v5

    aput-object v10, v8, v9

    .line 233
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    :cond_2
    move v8, v3

    move v9, v4

    if-eq v8, v9, :cond_3

    .line 250
    move-object v8, v1

    move v9, v3

    move-object v10, v5

    aput-object v10, v8, v9

    .line 252
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    :cond_4
    move v8, v3

    move v9, v4

    if-eq v8, v9, :cond_5

    .line 257
    move-object v8, v1

    move v9, v3

    move-object v10, v5

    aput-object v10, v8, v9

    .line 259
    :cond_5
    move v8, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_1

    .line 262
    :cond_6
    move v8, v3

    move v0, v8

    return v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .prologue
    .line 593
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    :goto_0
    move v10, v3

    move v11, v4

    if-ge v10, v11, :cond_5

    .line 594
    move v10, v3

    move v11, v4

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v6, v10

    .line 595
    move-object v10, v2

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 596
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    move v8, v10

    .line 597
    move v10, v8

    if-gez v10, :cond_0

    .line 598
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v3, v10

    .line 613
    :goto_1
    goto :goto_0

    .line 599
    :cond_0
    move v10, v8

    if-nez v10, :cond_4

    .line 600
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 601
    move v10, v6

    move v0, v10

    .line 614
    :goto_2
    return v0

    .line 603
    :cond_1
    move-object v10, v0

    move-object v11, v1

    move v12, v6

    move v13, v3

    move v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/util/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v10

    move v9, v10

    .line 604
    move v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 605
    move v10, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    move v10, v6

    :goto_3
    move v0, v10

    goto :goto_2

    :cond_2
    move v10, v9

    goto :goto_3

    .line 607
    :cond_3
    move v10, v9

    move v0, v10

    goto :goto_2

    .line 611
    :cond_4
    move v10, v6

    move v4, v10

    goto :goto_1

    .line 614
    :cond_5
    move v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    move v10, v3

    :goto_4
    move v0, v10

    goto :goto_2

    :cond_6
    const/4 v10, -0x1

    goto :goto_4
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v3

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 268
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    move v6, v5

    move v0, v6

    .line 272
    :goto_1
    return v0

    .line 267
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v3

    if-lt v8, v9, :cond_0

    .line 620
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 621
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v7, v8

    .line 622
    move v8, v7

    if-eqz v8, :cond_2

    .line 629
    :cond_0
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 630
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 631
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v7, v8

    .line 632
    move v8, v7

    if-eqz v8, :cond_4

    .line 639
    :cond_1
    const/4 v8, -0x1

    move v0, v8

    :goto_2
    return v0

    .line 625
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 626
    move v8, v5

    move v0, v8

    goto :goto_2

    .line 619
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 635
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 636
    move v8, v5

    move v0, v8

    goto :goto_2

    .line 629
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mSize:I

    move v9, v2

    add-int/2addr v8, v9

    const/16 v9, 0xa

    add-int/lit8 v8, v8, 0xa

    move v3, v8

    .line 280
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    move v10, v3

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    iput-object v9, v8, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    .line 281
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 283
    const/4 v8, 0x0

    move v4, v8

    .line 284
    :goto_0
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-lt v8, v9, :cond_0

    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 285
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    if-ne v8, v9, :cond_2

    .line 287
    move v8, v2

    move v9, v4

    sub-int/2addr v8, v9

    move v5, v8

    .line 288
    move-object v8, v1

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move v12, v5

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move v10, v5

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 290
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/util/SortedList;->mSize:I

    move v10, v5

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/util/SortedList;->mSize:I

    .line 291
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move v10, v5

    sub-int/2addr v9, v10

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 327
    :cond_1
    :goto_1
    return-void

    .line 295
    :cond_2
    move v8, v4

    move v9, v2

    if-ne v8, v9, :cond_3

    .line 297
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int/2addr v8, v9

    move v5, v8

    .line 298
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move v12, v5

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move v10, v5

    add-int/2addr v9, v10

    iput v9, v8, Landroid/support/v7/util/SortedList;->mMergedSize:I

    .line 300
    goto :goto_1

    .line 303
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    aget-object v8, v8, v9

    move-object v5, v8

    .line 304
    move-object v8, v1

    move v9, v4

    aget-object v8, v8, v9

    move-object v6, v8

    .line 305
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v7, v8

    .line 306
    move v8, v7

    if-lez v8, :cond_5

    .line 308
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move-object v10, v6

    aput-object v10, v8, v9

    .line 309
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/util/SortedList;->mSize:I

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 311
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mMergedSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 326
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 312
    :cond_5
    move v8, v7

    if-nez v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 314
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move-object v10, v6

    aput-object v10, v8, v9

    .line 315
    add-int/lit8 v4, v4, 0x1

    .line 316
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    .line 317
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 318
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/SortedList;->mMergedSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    goto :goto_2

    .line 323
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/SortedList;->mMergedSize:I

    move-object v10, v5

    aput-object v10, v8, v9

    .line 324
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    goto :goto_2
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v4

    move v3, v4

    .line 444
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 445
    const/4 v4, 0x0

    move v0, v4

    .line 448
    :goto_0
    return v0

    .line 447
    :cond_0
    move-object v4, v0

    move v5, v3

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 448
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private removeItemAtIndex(IZ)V
    .locals 10

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/SortedList;->mSize:I

    move v8, v1

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/support/v7/util/SortedList;->mSize:I

    .line 454
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 455
    move v3, v2

    if-eqz v3, :cond_0

    .line 456
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 458
    :cond_0
    return-void
.end method

.method private throwIfMerging()V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot call this method from within addAll"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 135
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 185
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 186
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 174
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 152
    move-object v4, v1

    array-length v4, v4

    if-nez v4, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 156
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 163
    :goto_1
    goto :goto_0

    .line 158
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mTClass:Ljava/lang/Class;

    move-object v5, v1

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    .line 159
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public beginBatchedUpdates()V
    .locals 6

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 369
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 372
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-nez v1, :cond_1

    .line 373
    move-object v1, v0

    new-instance v2, Landroid/support/v7/util/SortedList$BatchedCallback;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {v3, v4}, Landroid/support/v7/util/SortedList$BatchedCallback;-><init>(Landroid/support/v7/util/SortedList$Callback;)V

    iput-object v2, v1, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    .line 375
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    iput-object v2, v1, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 376
    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 666
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 667
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/SortedList;->mSize:I

    if-nez v2, :cond_0

    .line 674
    :goto_0
    return-void

    .line 670
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/SortedList;->mSize:I

    move v1, v2

    .line 671
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 672
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/util/SortedList;->mSize:I

    .line 673
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 674
    goto :goto_0
.end method

.method public endBatchedUpdates()V
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 383
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    instance-of v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 384
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    check-cast v1, Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-virtual {v1}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 386
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    if-ne v1, v2, :cond_1

    .line 387
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mBatchedCallback:Landroid/support/v7/util/SortedList$BatchedCallback;

    invoke-static {v2}, Landroid/support/v7/util/SortedList$BatchedCallback;->access$000(Landroid/support/v7/util/SortedList$BatchedCallback;)Landroid/support/v7/util/SortedList$Callback;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 389
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList;->mSize:I

    if-ge v2, v3, :cond_0

    move v2, v1

    if-gez v2, :cond_1

    .line 556
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to get item at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList;->mSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 562
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList;->mMergedSize:I

    if-lt v2, v3, :cond_2

    .line 563
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mMergedSize:I

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    .line 566
    :goto_0
    return-object v0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 578
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 579
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/SortedList;->mMergedSize:I

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v3

    move v2, v3

    .line 580
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 581
    move v3, v2

    move v0, v3

    .line 589
    :goto_0
    return v0

    .line 583
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mOldData:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/SortedList;->mOldDataSize:I

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v3

    move v2, v3

    .line 584
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 585
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mOldDataStart:I

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList;->mMergedSize:I

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 587
    :cond_1
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 589
    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/SortedList;->mSize:I

    const/4 v8, 0x4

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 7

    .prologue
    .line 535
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 537
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 538
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 539
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v4

    move v3, v4

    .line 540
    move v4, v1

    move v5, v3

    if-eq v4, v5, :cond_0

    .line 541
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 543
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 425
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/util/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 437
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 438
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 439
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/SortedList;->mSize:I

    move v0, v1

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/util/SortedList;->throwIfMerging()V

    .line 482
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 484
    move-object v6, v3

    move-object v7, v2

    if-eq v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 485
    move-object v6, v3

    move-object v7, v2

    if-eq v6, v7, :cond_3

    .line 487
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    move v5, v6

    .line 488
    move v6, v5

    if-nez v6, :cond_3

    .line 489
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mData:[Ljava/lang/Object;

    move v7, v1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 490
    move v6, v4

    if-eqz v6, :cond_1

    .line 491
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 505
    :cond_1
    :goto_1
    return-void

    .line 484
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 496
    :cond_3
    move v6, v4

    if-eqz v6, :cond_4

    .line 497
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    .line 500
    :cond_4
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/util/SortedList;->removeItemAtIndex(IZ)V

    .line 501
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v6

    move v5, v6

    .line 502
    move v6, v1

    move v7, v5

    if-eq v6, v7, :cond_5

    .line 503
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/util/SortedList;->mCallback:Landroid/support/v7/util/SortedList$Callback;

    move v7, v1

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 505
    :cond_5
    goto :goto_1
.end method
