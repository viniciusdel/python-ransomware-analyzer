.class Landroid/support/v7/widget/PositionMap;
.super Ljava/lang/Object;
.source "PositionMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PositionMap$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/support/v7/widget/PositionMap;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 48
    move v2, v1

    if-nez v2, :cond_0

    .line 49
    move-object v2, v0

    sget-object v3, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 50
    move-object v2, v0

    sget-object v3, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 56
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 57
    return-void

    .line 52
    :cond_0
    move v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v2

    move v1, v2

    .line 53
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 54
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 151
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v1, v7

    .line 152
    const/4 v7, 0x0

    move v2, v7

    .line 153
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v3, v7

    .line 154
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 156
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 157
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 159
    move-object v7, v6

    sget-object v8, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 160
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 161
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    aput v9, v7, v8

    .line 162
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 163
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 166
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 156
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 171
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 174
    return-void
.end method

.method static idealBooleanArraySize(I)I
    .locals 2

    .prologue
    .line 406
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method static idealByteArraySize(I)I
    .locals 5

    .prologue
    .line 398
    move v0, p0

    const/4 v2, 0x4

    move v1, v2

    :goto_0
    move v2, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 399
    move v2, v0

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    const/16 v4, 0xc

    add-int/lit8 v3, v3, -0xc

    if-gt v2, v3, :cond_0

    .line 400
    const/4 v2, 0x1

    move v3, v1

    shl-int/2addr v2, v3

    const/16 v3, 0xc

    add-int/lit8 v2, v2, -0xc

    move v0, v2

    .line 402
    :goto_1
    return v0

    .line 398
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_1
    move v2, v0

    move v0, v2

    goto :goto_1
.end method

.method static idealCharArraySize(I)I
    .locals 3

    .prologue
    .line 414
    move v0, p0

    move v1, v0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method

.method static idealFloatArraySize(I)I
    .locals 3

    .prologue
    .line 422
    move v0, p0

    move v1, v0

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    return v0
.end method

.method static idealIntArraySize(I)I
    .locals 3

    .prologue
    .line 418
    move v0, p0

    move v1, v0

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    return v0
.end method

.method static idealLongArraySize(I)I
    .locals 3

    .prologue
    .line 430
    move v0, p0

    move v1, v0

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    const/16 v2, 0x8

    div-int/lit8 v1, v1, 0x8

    move v0, v1

    return v0
.end method

.method static idealObjectArraySize(I)I
    .locals 3

    .prologue
    .line 426
    move v0, p0

    move v1, v0

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    return v0
.end method

.method static idealShortArraySize(I)I
    .locals 3

    .prologue
    .line 410
    move v0, p0

    move v1, v0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-eqz v7, :cond_0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/PositionMap;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_0

    .line 336
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/PositionMap;->put(ILjava/lang/Object;)V

    .line 362
    :goto_0
    return-void

    .line 340
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_1

    .line 341
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 344
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v3, v7

    .line 345
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 346
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 348
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 349
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 352
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 356
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 359
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 360
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 361
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 362
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 319
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v1, v4

    .line 320
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 322
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 323
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 327
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 328
    return-void
.end method

.method public clone()Landroid/support/v7/widget/PositionMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/PositionMap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 64
    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/PositionMap;

    move-object v1, v3

    .line 65
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v3, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 66
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 67
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/PositionMap;->clone()Landroid/support/v7/widget/PositionMap;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public delete(I)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v3

    move v2, v3

    .line 102
    move v3, v2

    if-ltz v3, :cond_0

    .line 103
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    sget-object v4, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 104
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v4, v2

    sget-object v5, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 105
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 108
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/PositionMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v6, v1

    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v4

    move v3, v4

    .line 89
    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 90
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .line 92
    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 287
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 290
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 305
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 308
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v3, v4, :cond_2

    .line 309
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 310
    move v3, v2

    move v0, v3

    .line 312
    :goto_1
    return v0

    .line 308
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public insertKeyRange(II)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public keyAt(I)I
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 250
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v3, v7

    .line 184
    move v7, v3

    if-ltz v7, :cond_0

    .line 185
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 226
    :goto_0
    return-void

    .line 187
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 189
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v8, v3

    aget-object v7, v7, v8

    sget-object v8, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    .line 190
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 191
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 192
    goto :goto_0

    .line 195
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 196
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 199
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v7

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 202
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 203
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 205
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 206
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 209
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 213
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 216
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v8, v3

    sub-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 218
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 223
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 224
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/support/v7/widget/PositionMap;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/PositionMap;->delete(I)V

    .line 115
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 122
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 123
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 125
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 135
    move v5, v1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 136
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/PositionMap;->removeAt(I)V

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public removeKeyRange(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 274
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 277
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 278
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 234
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 237
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/PositionMap;->mSize:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 373
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/PositionMap;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 374
    const-string v5, "{}"

    move-object v0, v5

    .line 394
    :goto_0
    return-object v0

    .line 377
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/PositionMap;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 378
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v5, v6, :cond_3

    .line 380
    move v5, v2

    if-lez v5, :cond_1

    .line 381
    move-object v5, v1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 383
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/PositionMap;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 384
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 385
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 386
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/PositionMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 387
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 388
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    :cond_2
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 393
    :cond_3
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 394
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 261
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 264
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
