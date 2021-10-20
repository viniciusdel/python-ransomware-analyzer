.class Landroid/support/v4/media/MediaBrowserServiceCompat$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 5

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 383
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    move-object v2, v5

    .line 384
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v3, v5

    .line 386
    move-object v5, v3

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v8}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_1
    goto :goto_0

    .line 388
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 389
    const-string v5, "MediaBrowserServiceCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is no longer valid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 390
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 393
    :cond_0
    return-void
.end method
