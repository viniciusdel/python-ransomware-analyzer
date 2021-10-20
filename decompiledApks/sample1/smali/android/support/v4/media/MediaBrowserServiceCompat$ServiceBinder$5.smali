.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    .line 281
    return-void
.end method
