.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$id:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 234
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v3}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v1, v3

    .line 237
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v2, v3

    .line 238
    move-object v3, v2

    if-nez v3, :cond_0

    .line 239
    const-string v3, "MediaBrowserServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;->val$id:Ljava/lang/String;

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    .line 245
    goto :goto_0
.end method
