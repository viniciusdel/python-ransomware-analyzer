.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplBase"
.end annotation


# instance fields
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;

.field private mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .prologue
    .line 806
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 807
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 808
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 809
    return-void
.end method


# virtual methods
.method public adjustVolume(II)V
    .locals 9

    .prologue
    .line 969
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/media/session/IMediaSession;->adjustVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 971
    const-string v4, "MediaControllerCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in adjustVolume. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 844
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 845
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "event may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 848
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/media/session/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 852
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    return v0

    .line 849
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 850
    const-string v3, "MediaControllerCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in dispatchMediaButtonEvent. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 907
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 911
    :goto_0
    return-object v0

    .line 908
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 909
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getExtras. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 911
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getFlags()J
    .locals 6

    .prologue
    .line 927
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 931
    :goto_0
    return-wide v0

    .line 928
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 929
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getFlags. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 931
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 997
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    .prologue
    .line 877
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 881
    :goto_0
    return-object v0

    .line 878
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 879
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getMetadata. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 881
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 988
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 992
    :goto_0
    return-object v0

    .line 989
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 990
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getPackageName. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 992
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .locals 11

    .prologue
    .line 937
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v3}, Landroid/support/v4/media/session/IMediaSession;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v3

    move-object v1, v3

    .line 938
    new-instance v3, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    iget v5, v5, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    move-object v7, v1

    iget v7, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    move-object v9, v1

    iget v9, v9, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 940
    move-object v3, v2

    move-object v0, v3

    .line 944
    :goto_0
    return-object v0

    .line 941
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 942
    const-string v3, "MediaControllerCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in getPlaybackInfo. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 944
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 6

    .prologue
    .line 867
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 871
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 869
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getPlaybackState. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 871
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
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
    .line 887
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getQueue()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 891
    :goto_0
    return-object v0

    .line 888
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 889
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getQueue. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 891
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 897
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 901
    :goto_0
    return-object v0

    .line 898
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 899
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getQueueTitle. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 901
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getRatingType()I
    .locals 6

    .prologue
    .line 917
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 921
    :goto_0
    return v0

    .line 918
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 919
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getRatingType. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 921
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 950
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 954
    :goto_0
    return-object v0

    .line 951
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 952
    const-string v2, "MediaControllerCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in getSessionActivity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 954
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 6

    .prologue
    .line 857
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    if-nez v1, :cond_0

    .line 858
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;-><init>(Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v2, v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 861
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-object v0, v1

    return-object v0
.end method

.method public registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 8

    .prologue
    .line 813
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    .line 814
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "callback may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 817
    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v4}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 818
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$400(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v4, v5}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 819
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$500(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 820
    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$302(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 825
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 822
    const-string v4, "MediaControllerCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in registerCallback. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 823
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 12

    .prologue
    .line 978
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v6, v1

    move-object v7, v2

    new-instance v8, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/media/session/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 981
    const-string v5, "MediaControllerCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dead object in sendCommand. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public setVolumeTo(II)V
    .locals 9

    .prologue
    .line 960
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/media/session/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 962
    const-string v4, "MediaControllerCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in setVolumeTo. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 7

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 830
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "callback may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 833
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$400(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v3, v4}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 835
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v3}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v3

    .line 836
    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$302(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 840
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 838
    const-string v3, "MediaControllerCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead object in unregisterCallback. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method
