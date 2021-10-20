.class Landroid/support/v4/media/MediaBrowserServiceCompat$4;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .locals 7

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$4;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$4;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 7

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 505
    move-object v3, v2

    const-string v4, "media_item"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 506
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$4;->val$receiver:Landroid/support/v4/os/ResultReceiver;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 507
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$4;->onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
