.class Landroid/support/v4/media/MediaBrowserServiceCompat$3;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final synthetic val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 8

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$parentId:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 470
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadChildren sent null list for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$parentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eq v3, v4, :cond_1

    .line 488
    :goto_0
    return-void

    .line 482
    :cond_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$parentId:Ljava/lang/String;

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_1
    goto :goto_0

    .line 483
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 485
    const-string v3, "MediaBrowserServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onLoadChildren() failed for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$parentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method
