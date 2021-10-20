.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/util/List;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 759
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$list:Ljava/util/List;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$parentId:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 764
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v5, "onLoadChildren"

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 788
    :goto_0
    return-void

    .line 768
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$list:Ljava/util/List;

    move-object v1, v3

    .line 772
    move-object v3, v1

    if-nez v3, :cond_1

    .line 773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 777
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    move-object v2, v3

    .line 778
    move-object v3, v2

    if-nez v3, :cond_2

    .line 783
    goto :goto_0

    .line 787
    :cond_2
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;->val$parentId:Ljava/lang/String;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 788
    goto :goto_0
.end method
