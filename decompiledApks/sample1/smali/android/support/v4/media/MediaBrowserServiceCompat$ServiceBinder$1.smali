.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 8

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$uid:I

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 171
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v1, v4

    .line 174
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 176
    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V

    move-object v2, v4

    .line 177
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 178
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 179
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .line 181
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$uid:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 185
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    if-nez v4, :cond_0

    .line 186
    const-string v4, "MediaBrowserServiceCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No root for client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 189
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 191
    const-string v4, "MediaBrowserServiceCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 193
    goto :goto_0

    .line 196
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v4, :cond_1

    .line 198
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :cond_1
    goto :goto_0

    .line 201
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 202
    const-string v4, "MediaBrowserServiceCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 204
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method
