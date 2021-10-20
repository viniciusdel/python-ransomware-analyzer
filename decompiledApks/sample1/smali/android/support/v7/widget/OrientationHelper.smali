.class public abstract Landroid/support/v7/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper$1;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/OrientationHelper$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/OrientationHelper$1;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    move-object v0, v1

    return-object v0
.end method

.method public static createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "invalid orientation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :pswitch_0
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    move-object v0, v2

    .line 181
    :goto_0
    return-object v0

    :pswitch_1
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/OrientationHelper$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/OrientationHelper$2;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    const/high16 v1, -0x80000000

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    .line 55
    return-void
.end method
