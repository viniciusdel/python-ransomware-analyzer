.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v3}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v1, v3

    .line 219
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v2, v3

    .line 220
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 223
    :cond_0
    return-void
.end method
