.class Landroid/support/v7/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroid/support/v7/widget/OpReorderer$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/OpReorderer$Callback;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    .line 33
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 219
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_2

    .line 220
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v4, v5

    .line 221
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 222
    move v5, v2

    if-eqz v5, :cond_1

    .line 223
    move v5, v3

    move v0, v5

    .line 229
    :goto_1
    return v0

    .line 226
    :cond_0
    const/4 v5, 0x1

    move v2, v5

    .line 219
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 229
    :cond_2
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    const/4 v7, 0x0

    move v6, v7

    .line 163
    move-object v7, v3

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_0

    .line 164
    add-int/lit8 v6, v6, -0x1

    .line 166
    :cond_0
    move-object v7, v3

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v5

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v7, v8, :cond_1

    .line 167
    add-int/lit8 v6, v6, 0x1

    .line 169
    :cond_1
    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v7, v8, :cond_2

    .line 170
    move-object v7, v3

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 172
    :cond_2
    move-object v7, v5

    iget v7, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v8, v3

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v7, v8, :cond_3

    .line 173
    move-object v7, v3

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 175
    :cond_3
    move-object v7, v5

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v9, v6

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 176
    move-object v7, v1

    move v8, v2

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 177
    move-object v7, v1

    move v8, v4

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 178
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v4, v6

    .line 46
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-object v5, v6

    .line 47
    move-object v6, v5

    iget v6, v6, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v6, :pswitch_data_0

    .line 58
    :goto_0
    :pswitch_0
    return-void

    .line 49
    :pswitch_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v4

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 50
    goto :goto_0

    .line 52
    :pswitch_2
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v4

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 53
    goto :goto_0

    .line 55
    :pswitch_3
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v4

    move v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    move v2, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 40
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v10, 0x0

    move-object v6, v10

    .line 64
    const/4 v10, 0x0

    move v7, v10

    .line 67
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v10, v11, :cond_3

    .line 68
    const/4 v10, 0x0

    move v8, v10

    .line 69
    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v10, v11, :cond_0

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    .line 71
    const/4 v10, 0x1

    move v7, v10

    .line 82
    :cond_0
    :goto_0
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v10, v11, :cond_4

    .line 83
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 98
    :cond_1
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v10, v11, :cond_6

    .line 99
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 108
    :cond_2
    :goto_1
    move v10, v7

    if-eqz v10, :cond_7

    .line 109
    move-object v10, v1

    move v11, v2

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 110
    move-object v10, v1

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 111
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    move-object v11, v3

    invoke-interface {v10, v11}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 157
    :goto_2
    return-void

    .line 74
    :cond_3
    const/4 v10, 0x1

    move v8, v10

    .line 75
    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    if-ne v10, v11, :cond_0

    .line 77
    const/4 v10, 0x1

    move v7, v10

    goto :goto_0

    .line 84
    :cond_4
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_1

    .line 86
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 87
    move-object v10, v3

    const/4 v11, 0x2

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 88
    move-object v10, v3

    const/4 v11, 0x1

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 89
    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v10, :cond_5

    .line 90
    move-object v10, v1

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 91
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    move-object v11, v5

    invoke-interface {v10, v11}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 94
    :cond_5
    goto :goto_2

    .line 100
    :cond_6
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_2

    .line 101
    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v10, v11

    move v9, v10

    .line 103
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    const/4 v11, 0x2

    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v9

    const/4 v14, 0x0

    invoke-interface {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v10

    move-object v6, v10

    .line 104
    move-object v10, v5

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto/16 :goto_1

    .line 116
    :cond_7
    move v10, v8

    if-eqz v10, :cond_d

    .line 117
    move-object v10, v6

    if-eqz v10, :cond_9

    .line 118
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v6

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_8

    .line 119
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v6

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 121
    :cond_8
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v6

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_9

    .line 122
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v6

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 125
    :cond_9
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_a

    .line 126
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 128
    :cond_a
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v10, v11, :cond_b

    .line 129
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 148
    :cond_b
    :goto_3
    move-object v10, v1

    move v11, v2

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 149
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v10, v11, :cond_11

    .line 150
    move-object v10, v1

    move v11, v4

    move-object v12, v3

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 154
    :goto_4
    move-object v10, v6

    if-eqz v10, :cond_c

    .line 155
    move-object v10, v1

    move v11, v2

    move-object v12, v6

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    :cond_c
    goto/16 :goto_2

    .line 132
    :cond_d
    move-object v10, v6

    if-eqz v10, :cond_f

    .line 133
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v6

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_e

    .line 134
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v6

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 136
    :cond_e
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v6

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_f

    .line 137
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v6

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 140
    :cond_f
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_10

    .line 141
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 143
    :cond_10
    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v10, v11, :cond_b

    .line 144
    move-object v10, v3

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v12, v5

    iget v12, v12, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 152
    :cond_11
    move-object v10, v1

    move v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_4
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v9, 0x0

    move-object v6, v9

    .line 183
    const/4 v9, 0x0

    move-object v7, v9

    .line 185
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v9, v10, :cond_4

    .line 186
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 193
    :cond_0
    :goto_0
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v9, v10, :cond_5

    .line 194
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 202
    :cond_1
    :goto_1
    move-object v9, v1

    move v10, v4

    move-object v11, v3

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 203
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v9, :cond_6

    .line 204
    move-object v9, v1

    move v10, v2

    move-object v11, v5

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 209
    :goto_2
    move-object v9, v6

    if-eqz v9, :cond_2

    .line 210
    move-object v9, v1

    move v10, v2

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 212
    :cond_2
    move-object v9, v7

    if-eqz v9, :cond_3

    .line 213
    move-object v9, v1

    move v10, v2

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    :cond_3
    return-void

    .line 187
    :cond_4
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 189
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 190
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    const/4 v10, 0x4

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    move-object v13, v5

    iget-object v13, v13, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v6, v9

    goto :goto_0

    .line 195
    :cond_5
    move-object v9, v3

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 196
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v9, v10

    move v8, v9

    .line 198
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    const/4 v10, 0x4

    move-object v11, v3

    iget v11, v11, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v8

    move-object v13, v5

    iget-object v13, v13, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    move-object v7, v9

    .line 200
    move-object v9, v5

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v11, v8

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto/16 :goto_1

    .line 206
    :cond_6
    move-object v9, v1

    move v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 207
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    move-object v10, v5

    invoke-interface {v9, v10}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method
