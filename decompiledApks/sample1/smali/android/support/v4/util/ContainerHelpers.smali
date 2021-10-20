.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 9

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v7, 0x0

    move v3, v7

    .line 47
    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 49
    :goto_0
    move v7, v3

    move v8, v4

    if-gt v7, v8, :cond_2

    .line 50
    move v7, v3

    move v8, v4

    add-int/2addr v7, v8

    const/4 v8, 0x1

    ushr-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 51
    move-object v7, v0

    move v8, v5

    aget v7, v7, v8

    move v6, v7

    .line 53
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 54
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    .line 60
    :goto_1
    goto :goto_0

    .line 55
    :cond_0
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_1

    .line 56
    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    goto :goto_1

    .line 58
    :cond_1
    move v7, v5

    move v0, v7

    .line 61
    :goto_2
    return v0

    :cond_2
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_2
.end method

.method static binarySearch([JIJ)I
    .locals 13

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    const/4 v9, 0x0

    move v4, v9

    .line 66
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .line 68
    :goto_0
    move v9, v4

    move v10, v5

    if-gt v9, v10, :cond_2

    .line 69
    move v9, v4

    move v10, v5

    add-int/2addr v9, v10

    const/4 v10, 0x1

    ushr-int/lit8 v9, v9, 0x1

    move v6, v9

    .line 70
    move-object v9, v0

    move v10, v6

    aget-wide v9, v9, v10

    move-wide v7, v9

    .line 72
    move-wide v9, v7

    move-wide v11, v2

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 73
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v4, v9

    .line 79
    :goto_1
    goto :goto_0

    .line 74
    :cond_0
    move-wide v9, v7

    move-wide v11, v2

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 75
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    goto :goto_1

    .line 77
    :cond_1
    move v9, v6

    move v0, v9

    .line 80
    :goto_2
    return v0

    :cond_2
    move v9, v4

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v0, v9

    goto :goto_2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static idealByteArraySize(I)I
    .locals 5

    .prologue
    .line 33
    move v0, p0

    const/4 v2, 0x4

    move v1, v2

    :goto_0
    move v2, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 34
    move v2, v0

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    const/16 v4, 0xc

    add-int/lit8 v3, v3, -0xc

    if-gt v2, v3, :cond_0

    .line 35
    const/4 v2, 0x1

    move v3, v1

    shl-int/2addr v2, v3

    const/16 v3, 0xc

    add-int/lit8 v2, v2, -0xc

    move v0, v2

    .line 37
    :goto_1
    return v0

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    move v2, v0

    move v0, v2

    goto :goto_1
.end method

.method public static idealIntArraySize(I)I
    .locals 3

    .prologue
    .line 25
    move v0, p0

    move v1, v0

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 3

    .prologue
    .line 29
    move v0, p0

    move v1, v0

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v1

    const/16 v2, 0x8

    div-int/lit8 v1, v1, 0x8

    move v0, v1

    return v0
.end method
