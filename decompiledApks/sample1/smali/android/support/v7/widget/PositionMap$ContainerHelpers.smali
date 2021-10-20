.class Landroid/support/v7/widget/PositionMap$ContainerHelpers;
.super Ljava/lang/Object;
.source "PositionMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/PositionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerHelpers"
.end annotation


# static fields
.field static final EMPTY_BOOLEANS:[Z

.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_BOOLEANS:[Z

    .line 435
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_INTS:[I

    .line 436
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_LONGS:[J

    .line 437
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 9

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v7, 0x0

    move v3, v7

    .line 442
    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 444
    :goto_0
    move v7, v3

    move v8, v4

    if-gt v7, v8, :cond_2

    .line 445
    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 446
    move-object v7, v0

    move v8, v5

    aget v7, v7, v8

    move v6, v7

    .line 448
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 449
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    .line 455
    :goto_1
    goto :goto_0

    .line 450
    :cond_0
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_1

    .line 451
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    goto :goto_1

    .line 453
    :cond_1
    move v7, v5

    move v0, v7

    .line 456
    :goto_2
    return v0

    :cond_2
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_2
.end method
