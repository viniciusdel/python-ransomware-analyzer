.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
.super Landroid/support/v4/media/session/IMediaSession$Stub;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaSessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .locals 4

    .prologue
    .line 1550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/media/session/IMediaSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .locals 7

    .prologue
    .line 1640
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1700(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    .line 1641
    return-void
.end method

.method public fastForward()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1695
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1696
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 1743
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1744
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 1745
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getFlags()J
    .locals 7

    .prologue
    .line 1609
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 1610
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v3

    int-to-long v3, v3

    move-object v5, v1

    monitor-exit v5

    move-wide v0, v3

    return-wide v0

    .line 1611
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 1601
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1602
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 1603
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    .prologue
    .line 1721
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1590
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .prologue
    .line 1726
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1731
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1732
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;

    move-result-object v3

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 1733
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1738
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getRatingType()I
    .locals 2

    .prologue
    .line 1751
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1596
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 17

    .prologue
    .line 1621
    move-object/from16 v0, p0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v6, v10

    monitor-enter v9

    .line 1622
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v9

    move v5, v9

    .line 1623
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v9

    move v4, v9

    .line 1624
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v9

    move-object v7, v9

    .line 1625
    move v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1626
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v9

    move v1, v9

    .line 1627
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v9

    move v2, v9

    .line 1628
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v9

    move v3, v9

    .line 1634
    :goto_0
    move-object v9, v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    new-instance v9, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move v11, v5

    move v12, v4

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-direct/range {v10 .. v15}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    move-object v0, v9

    return-object v0

    .line 1630
    :cond_0
    const/4 v9, 0x2

    move v1, v9

    .line 1631
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v9

    move v2, v9

    .line 1632
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    move v3, v9

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public isTransportControlEnabled()Z
    .locals 3

    .prologue
    .line 1756
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v1

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1685
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1686
    return-void
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1675
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1676
    return-void
.end method

.method public play()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1650
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1651
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1655
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/4 v4, 0x2

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1656
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1660
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/4 v4, 0x3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1661
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1665
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/16 v4, 0x12

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1666
    return-void
.end method

.method public previous()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1690
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1691
    return-void
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1710
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v2

    const/16 v3, 0xc

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1711
    return-void
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 5

    .prologue
    .line 1571
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1573
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :goto_0
    return-void

    .line 1574
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    .line 1579
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    .line 1580
    goto :goto_0
.end method

.method public rewind()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1700
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1701
    return-void
.end method

.method public seekTo(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1705
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/16 v4, 0xb

    move-wide v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1706
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 12

    .prologue
    .line 1553
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v4

    const/16 v5, 0xf

    new-instance v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-static {v10}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->access$700(Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)Landroid/os/ResultReceiver;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1555
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1716
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/16 v4, 0xd

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1717
    return-void
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 1559
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    move-result v3

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1561
    move v3, v2

    if-eqz v3, :cond_0

    .line 1562
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/16 v4, 0xe

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1564
    :cond_0
    move v3, v2

    move v0, v3

    return v0

    .line 1559
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 7

    .prologue
    .line 1645
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    .line 1646
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 7

    .prologue
    .line 1670
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v3

    const/4 v4, 0x4

    move-wide v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1671
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1680
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    .line 1681
    return-void
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 4

    .prologue
    .line 1584
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v2

    .line 1585
    return-void
.end method
