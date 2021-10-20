.class Landroid/support/v7/util/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/MessageThreadUtil$MessageQueue;,
        Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/util/MessageThreadUtil$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/util/MessageThreadUtil$2;-><init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)V

    move-object v0, v2

    return-object v0
.end method

.method public getMainThreadProxy(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/util/MessageThreadUtil$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/util/MessageThreadUtil$1;-><init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)V

    move-object v0, v2

    return-object v0
.end method
