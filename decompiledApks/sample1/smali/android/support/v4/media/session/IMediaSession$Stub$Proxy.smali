.class Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 421
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 422
    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 631
    move-object v7, v4

    :try_start_0
    const-string v8, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 632
    move-object v7, v4

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    move-object v7, v4

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v8, 0xb

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 636
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 640
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 642
    return-void

    .line 639
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 640
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method public fastForward()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 824
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 826
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 830
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 832
    return-void

    .line 829
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 830
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 990
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 994
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1f

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 996
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 997
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 998
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 1005
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1006
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1008
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1001
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 1005
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1006
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getFlags()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v1, v6

    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    .line 593
    move-object v6, v1

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x9

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 595
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 596
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v3, v6

    .line 599
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 600
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 602
    move-wide v6, v3

    move-wide v0, v6

    return-wide v0

    .line 599
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 600
    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    const-string v1, "android.support.v4.media.session.IMediaSession"

    move-object v0, v1

    return-object v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 571
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x8

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 573
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 574
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 575
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 582
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 583
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 585
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 578
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 583
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 911
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 912
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1b

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 913
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 914
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 915
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 922
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 923
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 925
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 918
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 922
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 923
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 537
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x6

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 539
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 540
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 543
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 544
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 546
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 543
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 544
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 933
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1c

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 935
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 936
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 937
    sget-object v5, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 944
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 945
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 947
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 940
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 944
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 945
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getQueue()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 951
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 955
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1d

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 957
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 958
    move-object v5, v2

    sget-object v6, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 961
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 962
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 964
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 961
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 962
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 968
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 972
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1e

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 974
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 975
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 976
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 983
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 984
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 986
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 979
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 983
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 984
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getRatingType()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 1013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 1016
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x20

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 1018
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 1019
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v3, v5

    .line 1022
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1023
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1025
    move v5, v3

    move v0, v5

    return v0

    .line 1022
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1023
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getTag()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 554
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x7

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 556
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 557
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 560
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 561
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 563
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 560
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 561
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 606
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 610
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 611
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xa

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 612
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 613
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 614
    sget-object v5, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 621
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 622
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 624
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 617
    :cond_0
    const/4 v5, 0x0

    move-object v3, v5

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 622
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public isTransportControlEnabled()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v1, v5

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 520
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x5

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 522
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 523
    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 526
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 527
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 529
    move v5, v3

    move v0, v5

    return v0

    .line 523
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 527
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public next()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 796
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 798
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 802
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 804
    return-void

    .line 801
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 802
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public pause()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 768
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 770
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 774
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 776
    return-void

    .line 773
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 774
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public play()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 667
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 669
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 673
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 675
    return-void

    .line 672
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 673
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 681
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 682
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 684
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 690
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0xe

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 691
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 695
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 697
    return-void

    .line 688
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 694
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 695
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 703
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 706
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 712
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0xf

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 713
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 717
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 719
    return-void

    .line 710
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 716
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 717
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 725
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 727
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 734
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 740
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x10

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 741
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 745
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 747
    return-void

    .line 731
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 745
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 738
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public previous()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 810
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 812
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 816
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 818
    return-void

    .line 815
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 816
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 867
    move-object v5, v2

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 869
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 875
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x19

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 876
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 880
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 882
    return-void

    .line 873
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 879
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 880
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 489
    move-object v5, v2

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    move-object v5, v2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-interface {v6}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 491
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x3

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 492
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 496
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 498
    return-void

    .line 490
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 496
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public rewind()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 838
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 840
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 844
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 846
    return-void

    .line 843
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 844
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public seekTo(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 849
    move-object v0, p0

    move-wide v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 852
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    move-object v6, v3

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 854
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x18

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 855
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 859
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 861
    return-void

    .line 858
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 859
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 436
    move-object v7, v4

    :try_start_0
    const-string v8, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 439
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    move-object v7, v2

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 445
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 446
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 452
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x1

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 453
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 457
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 459
    return-void

    .line 443
    :cond_0
    move-object v7, v4

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 457
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7

    .line 450
    :cond_1
    move-object v7, v4

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 888
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 890
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 891
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 897
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x1a

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 898
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 902
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 904
    return-void

    .line 895
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 902
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 466
    move-object v6, v2

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 468
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 474
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 475
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 476
    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 479
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 480
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 482
    move v6, v4

    move v0, v6

    return v0

    .line 472
    :cond_0
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 480
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 476
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 648
    move-object v7, v4

    :try_start_0
    const-string v8, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    move-object v7, v4

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    move-object v7, v4

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v8, 0xc

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 653
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 657
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 659
    return-void

    .line 656
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 657
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method public skipToQueueItem(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    move-object v0, p0

    move-wide v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 753
    move-object v6, v3

    :try_start_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 754
    move-object v6, v3

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0x11

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 756
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 760
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 762
    return-void

    .line 759
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 760
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public stop()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 779
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v1, v4

    .line 780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 782
    move-object v4, v1

    :try_start_0
    const-string v5, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 783
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 784
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 788
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 790
    return-void

    .line 787
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 788
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 504
    move-object v5, v2

    :try_start_0
    const-string v6, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    move-object v5, v2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-interface {v6}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 506
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x4

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 507
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 511
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 513
    return-void

    .line 505
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 511
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method
