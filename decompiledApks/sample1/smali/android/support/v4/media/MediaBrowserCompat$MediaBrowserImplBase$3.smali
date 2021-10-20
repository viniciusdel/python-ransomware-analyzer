.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Handler;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 642
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    const-string v5, "media_item"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 644
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 647
    :cond_1
    move-object v4, v2

    const-string v5, "media_item"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    .line 649
    move-object v4, v3

    instance-of v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez v4, :cond_2

    .line 650
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 651
    goto :goto_0

    .line 653
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    move-object v5, v3

    check-cast v5, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 654
    goto :goto_0
.end method
