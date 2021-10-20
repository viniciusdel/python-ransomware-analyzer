.class public abstract Landroid/support/v7/util/AsyncListUtil$DataCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fillData([Ljava/lang/Object;II)V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation
.end method

.method public getMaxCachedTiles()I
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    const/16 v1, 0xa

    move v0, v1

    return v0
.end method

.method public recycleData([Ljava/lang/Object;I)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 485
    return-void
.end method

.method public abstract refreshData()I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
