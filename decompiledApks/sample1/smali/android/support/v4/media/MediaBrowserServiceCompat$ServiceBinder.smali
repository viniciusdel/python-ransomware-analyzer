.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.super Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 10

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 247
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 14

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move v4, v5

    .line 163
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v6, v1

    move v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$000(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package/uid mismatch: uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    move v12, v4

    invoke-direct/range {v7 .. v12}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 209
    return-void
.end method

.method public disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 8

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 225
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 10

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 283
    goto :goto_0
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 10

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 269
    return-void
.end method
