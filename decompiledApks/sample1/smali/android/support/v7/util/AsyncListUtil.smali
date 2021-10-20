.class public Landroid/support/v7/util/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/AsyncListUtil$ViewCallback;,
        Landroid/support/v7/util/AsyncListUtil$DataCallback;
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
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field private mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/AsyncListUtil$DataCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field private mItemCount:I

.field private final mMainThreadCallback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroid/support/v7/util/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/TileList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroid/support/v7/util/AsyncListUtil$DataCallback;Landroid/support/v7/util/AsyncListUtil$ViewCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroid/support/v7/util/AsyncListUtil$DataCallback",
            "<TT;>;",
            "Landroid/support/v7/util/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    .line 62
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    .line 63
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    .line 66
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    .line 68
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    .line 70
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    .line 71
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    iput v7, v6, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    .line 73
    move-object v6, v0

    new-instance v7, Landroid/util/SparseIntArray;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 207
    move-object v6, v0

    new-instance v7, Landroid/support/v7/util/AsyncListUtil$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/util/AsyncListUtil$1;-><init>(Landroid/support/v7/util/AsyncListUtil;)V

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mMainThreadCallback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    .line 289
    move-object v6, v0

    new-instance v7, Landroid/support/v7/util/AsyncListUtil$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/util/AsyncListUtil$2;-><init>(Landroid/support/v7/util/AsyncListUtil;)V

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mBackgroundCallback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    .line 89
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mTClass:Ljava/lang/Class;

    .line 90
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    .line 91
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mDataCallback:Landroid/support/v7/util/AsyncListUtil$DataCallback;

    .line 92
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    .line 94
    move-object v6, v0

    new-instance v7, Landroid/support/v7/util/TileList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/util/AsyncListUtil;->mTileSize:I

    invoke-direct {v8, v9}, Landroid/support/v7/util/TileList;-><init>(I)V

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    .line 96
    new-instance v6, Landroid/support/v7/util/MessageThreadUtil;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v7/util/MessageThreadUtil;-><init>()V

    move-object v5, v6

    .line 97
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/AsyncListUtil;->mMainThreadCallback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    invoke-interface {v7, v8}, Landroid/support/v7/util/ThreadUtil;->getMainThreadProxy(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mMainThreadProxy:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    .line 98
    move-object v6, v0

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/util/AsyncListUtil;->mBackgroundCallback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v7, v8}, Landroid/support/v7/util/ThreadUtil;->getBackgroundProxy(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    .line 100
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/util/AsyncListUtil;->refresh()V

    .line 101
    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/util/AsyncListUtil;I)I
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    move v0, v2

    return v0
.end method

.method static synthetic access$102(Landroid/support/v7/util/AsyncListUtil;Z)Z
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/util/AsyncListUtil;)V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/util/AsyncListUtil;->updateRange()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/util/AsyncListUtil;)Landroid/util/SparseIntArray;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    move-object v0, v1

    return-object v0
.end method

.method private isRefreshPending()Z
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "AsyncListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MAIN] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 77
    return-void
.end method

.method private updateRange()V
    .locals 7

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v1, v2}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    .line 176
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-gez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    if-lt v1, v2, :cond_2

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v1, :cond_4

    .line 185
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    .line 195
    :cond_3
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 196
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 198
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mViewCallback:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    .line 199
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v1, v2

    .line 200
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v1, v2

    .line 203
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/util/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v1 .. v6}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    .line 205
    goto/16 :goto_0

    .line 186
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_5

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-le v1, v2, :cond_6

    .line 188
    :cond_5
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    .line 189
    :cond_6
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ge v1, v2, :cond_7

    .line 190
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    .line 191
    :cond_7
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->mPrevRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-le v1, v2, :cond_3

    .line 192
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v7/util/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    if-lt v3, v4, :cond_1

    .line 152
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not within 0 and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mTileList:Landroid/support/v7/util/TileList;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/util/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 155
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/util/AsyncListUtil;->isRefreshPending()Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    :cond_2
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/AsyncListUtil;->mItemCount:I

    move v0, v1

    return v0
.end method

.method public onRangeChanged()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/util/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/util/AsyncListUtil;->updateRange()V

    .line 120
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/util/AsyncListUtil;->mAllowScrollHints:Z

    .line 121
    goto :goto_0
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 131
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->mBackgroundProxy:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/util/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v1, v2}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 132
    return-void
.end method
