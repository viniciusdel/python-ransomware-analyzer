.class Landroid/support/v7/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field next:Landroid/support/v7/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 401
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v1, :cond_0

    .line 416
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ChildHelper$Bucket;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/ChildHelper$Bucket;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 10

    .prologue
    .line 421
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 422
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v2, :cond_0

    .line 423
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    move v3, v1

    const/16 v4, 0x40

    add-int/lit8 v3, v3, -0x40

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget-wide v3, v3, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v5, 0x1

    move v7, v1

    shl-long/2addr v5, v7

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    iput-wide v3, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method countOnesBefore(I)I
    .locals 8

    .prologue
    .line 493
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v2, :cond_1

    .line 494
    move v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 495
    move-object v2, v0

    iget-wide v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    move v0, v2

    .line 502
    :goto_0
    return v0

    .line 497
    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v4, 0x1

    move v6, v1

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 499
    :cond_1
    move v2, v1

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 500
    move-object v2, v0

    iget-wide v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v4, 0x1

    move v6, v1

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 502
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    move v3, v1

    const/16 v4, 0x40

    add-int/lit8 v3, v3, -0x40

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method get(I)Z
    .locals 7

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 433
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 434
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    move v3, v1

    const/16 v4, 0x40

    add-int/lit8 v3, v3, -0x40

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v2

    move v0, v2

    .line 436
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v4, 0x1

    move v6, v1

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method insert(IZ)V
    .locals 16

    .prologue
    .line 448
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v10, v1

    const/16 v11, 0x40

    if-lt v10, v11, :cond_1

    .line 449
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 450
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    move v11, v1

    const/16 v12, 0x40

    add-int/lit8 v11, v11, -0x40

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    move-object v10, v0

    iget-wide v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    .line 453
    const-wide/16 v10, 0x1

    move v12, v1

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-wide v4, v10

    .line 454
    move-object v10, v0

    iget-wide v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v4

    and-long/2addr v10, v12

    move-wide v6, v10

    .line 455
    move-object v10, v0

    iget-wide v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v4

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v10, v12

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    move-wide v8, v10

    .line 456
    move-object v10, v0

    move-wide v11, v6

    move-wide v13, v8

    or-long/2addr v11, v13

    iput-wide v11, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 457
    move v10, v2

    if-eqz v10, :cond_4

    .line 458
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 462
    :goto_2
    move v10, v3

    if-nez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v10, :cond_0

    .line 463
    :cond_2
    move-object v10, v0

    invoke-direct {v10}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 464
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v11, 0x0

    move v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_0

    .line 452
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 460
    :cond_4
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_2
.end method

.method remove(I)Z
    .locals 17

    .prologue
    .line 470
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v9, v1

    const/16 v10, 0x40

    if-lt v9, v10, :cond_0

    .line 471
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 472
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    move v10, v1

    const/16 v11, 0x40

    add-int/lit8 v10, v10, -0x40

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v9

    move v0, v9

    .line 488
    :goto_0
    return v0

    .line 474
    :cond_0
    const-wide/16 v9, 0x1

    move v11, v1

    shl-long/2addr v9, v11

    move-wide v2, v9

    .line 475
    move-object v9, v0

    iget-wide v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    move-wide v11, v2

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v4, v9

    .line 476
    move-object v9, v0

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget-wide v10, v10, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v2

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v10, v12

    iput-wide v10, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 477
    move-wide v9, v2

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    move-wide v2, v9

    .line 478
    move-object v9, v0

    iget-wide v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    move-wide v11, v2

    and-long/2addr v9, v11

    move-wide v5, v9

    .line 480
    move-object v9, v0

    iget-wide v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    move-wide v11, v2

    const-wide/16 v13, -0x1

    xor-long/2addr v11, v13

    and-long/2addr v9, v11

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v9

    move-wide v7, v9

    .line 481
    move-object v9, v0

    move-wide v10, v5

    move-wide v12, v7

    or-long/2addr v10, v12

    iput-wide v10, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 482
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v9, :cond_2

    .line 483
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 484
    move-object v9, v0

    const/16 v10, 0x3f

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 486
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v9

    .line 488
    :cond_2
    move v9, v4

    move v0, v9

    goto :goto_0

    .line 475
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 442
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v1, :cond_0

    .line 443
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->reset()V

    .line 445
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 9

    .prologue
    .line 406
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 407
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 408
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    move v3, v1

    const/16 v4, 0x40

    add-int/lit8 v3, v3, -0x40

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget-wide v3, v3, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v5, 0x1

    move v7, v1

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    iput-wide v3, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "xx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
