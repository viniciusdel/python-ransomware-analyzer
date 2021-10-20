.class Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method static drainCache()V
    .locals 1

    .prologue
    .line 288
    :goto_0
    sget-object v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method static obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    .locals 4

    .prologue
    .line 275
    sget-object v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v0, v1

    .line 276
    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;-><init>()V

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 281
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 282
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 283
    sget-object v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v1

    .line 284
    return-void
.end method
