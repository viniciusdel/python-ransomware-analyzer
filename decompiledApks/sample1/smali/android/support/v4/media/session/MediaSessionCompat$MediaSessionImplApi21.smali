.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi21"
.end annotation


# instance fields
.field private mMediaButtonIntent:Landroid/app/PendingIntent;

.field private final mSessionObj:Ljava/lang/Object;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1957
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1958
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 1959
    move-object v3, v0

    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1960
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1962
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1963
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifySession(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 1964
    move-object v2, v0

    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1965
    return-void
.end method


# virtual methods
.method public getMediaSession()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2070
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2075
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2

    .prologue
    .line 2011
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v0, v1

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 1996
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 2006
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->release(Ljava/lang/Object;)V

    .line 2007
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 2001
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2002
    return-void
.end method

.method public setActive(Z)V
    .locals 4

    .prologue
    .line 1991
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setActive(Ljava/lang/Object;Z)V

    .line 1992
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 6

    .prologue
    .line 1969
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1971
    return-void

    .line 1969
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 2065
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2066
    return-void
.end method

.method public setFlags(I)V
    .locals 4

    .prologue
    .line 1975
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setFlags(Ljava/lang/Object;I)V

    .line 1976
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 2033
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mMediaButtonIntent:Landroid/app/PendingIntent;

    .line 2034
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 2035
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4

    .prologue
    .line 2022
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2024
    return-void

    .line 2022
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 4

    .prologue
    .line 2016
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2018
    return-void

    .line 2016
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public setPlaybackToLocal(I)V
    .locals 4

    .prologue
    .line 1980
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToLocal(Ljava/lang/Object;I)V

    .line 1981
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 4

    .prologue
    .line 1985
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1987
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2039
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move-object v2, v5

    .line 2040
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 2041
    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 2042
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-object v4, v5

    .line 2043
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2044
    goto :goto_0

    .line 2046
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueue(Ljava/lang/Object;Ljava/util/List;)V

    .line 2047
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 2051
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2052
    return-void
.end method

.method public setRatingType(I)V
    .locals 4

    .prologue
    .line 2056
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_0

    .line 2061
    :goto_0
    return-void

    .line 2059
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi22;->setRatingType(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 2028
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 2029
    return-void
.end method
