.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
.super Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacks"
.end annotation


# instance fields
.field private mMediaBrowser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 7

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;-><init>()V

    .line 920
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    .line 921
    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 930
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v4, v5

    .line 931
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 932
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1800(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    .line 934
    :cond_0
    return-void
.end method

.method public onConnectFailed()V
    .locals 4

    .prologue
    .line 941
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v1, v2

    .line 942
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 943
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1900(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    .line 945
    :cond_0
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 949
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v3, v4

    .line 950
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 951
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$2000(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V

    .line 953
    :cond_0
    return-void
.end method
