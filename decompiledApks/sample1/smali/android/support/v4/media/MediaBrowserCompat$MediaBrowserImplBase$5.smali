.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 694
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v6, "onConnect"

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 726
    :goto_0
    return-void

    .line 698
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 699
    const-string v4, "MediaBrowserCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConnect from service while mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v6

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$700(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "... ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 701
    goto :goto_0

    .line 703
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$802(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 704
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$902(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    .line 705
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1002(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 706
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I

    move-result v4

    .line 712
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 716
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 718
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v4

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_2
    goto :goto_1

    .line 719
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 722
    const-string v4, "MediaBrowserCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 726
    :cond_2
    goto/16 :goto_0
.end method
