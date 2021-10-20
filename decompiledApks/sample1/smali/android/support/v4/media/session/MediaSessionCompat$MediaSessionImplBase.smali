.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
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
    name = "MediaSessionImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private final mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

.field private mIsActive:Z

.field private mIsMbrRegistered:Z

.field private mIsRccRegistered:Z

.field private mLocalStream:I

.field private final mLock:Ljava/lang/Object;

.field private final mMediaButtonEventReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private final mPackageName:Ljava/lang/String;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mRccObj:Ljava/lang/Object;

.field private mSessionActivity:Landroid/app/PendingIntent;

.field private mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private final mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

.field private mVolumeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 11

    .prologue
    .line 1052
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1013
    move-object v5, v0

    new-instance v6, Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    .line 1014
    move-object v5, v0

    new-instance v6, Landroid/os/RemoteCallbackList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 1017
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    .line 1018
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1019
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    .line 1020
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 1037
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 1053
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1054
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "MediaButtonReceiver component may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1057
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    .line 1058
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    .line 1059
    move-object v5, v0

    move-object v6, v1

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 1060
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    .line 1061
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 1062
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    .line 1063
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    .line 1064
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mStub:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;

    invoke-direct {v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1065
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    .line 1067
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    .line 1068
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1069
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    .line 1070
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 1071
    move-object v5, v0

    move-object v6, v4

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mPackageName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mTag:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .locals 6

    .prologue
    .line 1001
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V
    .locals 6

    .prologue
    .line 1001
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    move v0, v1

    return v0
.end method

.method static synthetic access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 4

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mHandler:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    .locals 2

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    move v0, v1

    return v0
.end method

.method private adjustVolume(II)V
    .locals 7

    .prologue
    .line 1409
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1410
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v3, :cond_0

    .line 1411
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method private getStateWithUpdatedPosition()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 20

    .prologue
    .line 1430
    move-object/from16 v0, p0

    const-wide/16 v12, -0x1

    move-wide v2, v12

    .line 1431
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v4, v13

    monitor-enter v12

    .line 1432
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v1, v12

    .line 1433
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v12, :cond_0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v12, v13}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1435
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v12, v13}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v2, v12

    .line 1437
    :cond_0
    move-object v12, v4

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    const/4 v12, 0x0

    move-object v4, v12

    .line 1440
    move-object v12, v1

    if-eqz v12, :cond_3

    .line 1441
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_1

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_1

    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3

    .line 1444
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v12

    move-wide v5, v12

    .line 1445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-wide v7, v12

    .line 1446
    move-wide v12, v5

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 1447
    move-object v12, v1

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v12

    move-wide v13, v7

    move-wide v15, v5

    sub-long/2addr v13, v15

    long-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-long v12, v12

    move-object v14, v1

    invoke-virtual {v14}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v14

    add-long/2addr v12, v14

    move-wide v9, v12

    .line 1449
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_4

    move-wide v12, v9

    move-wide v14, v2

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 1450
    move-wide v12, v2

    move-wide v9, v12

    .line 1454
    :cond_2
    :goto_0
    new-instance v12, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v1

    invoke-direct {v13, v14}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    move-object v11, v12

    .line 1456
    move-object v12, v11

    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v13

    move-wide v14, v9

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v16

    move-wide/from16 v17, v7

    invoke-virtual/range {v12 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v12

    .line 1458
    move-object v12, v11

    invoke-virtual {v12}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v12

    move-object v4, v12

    .line 1462
    :cond_3
    move-object v12, v4

    if-nez v12, :cond_5

    move-object v12, v1

    :goto_1
    move-object v0, v12

    return-object v0

    .line 1437
    :catchall_0
    move-exception v12

    move-object v5, v12

    move-object v12, v4

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v5

    throw v12

    .line 1451
    :cond_4
    move-wide v12, v9

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    .line 1452
    const-wide/16 v12, 0x0

    move-wide v9, v12

    goto :goto_0

    .line 1462
    :cond_5
    move-object v12, v4

    goto :goto_1
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 1491
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    move v3, v7

    .line 1492
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    if-ltz v7, :cond_0

    .line 1493
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v5, v7

    .line 1495
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    :try_start_0
    invoke-interface {v7, v8, v9}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1496
    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_1

    .line 1499
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1500
    return-void
.end method

.method private sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 8

    .prologue
    .line 1515
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v2, v6

    .line 1516
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_0

    .line 1517
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v4, v6

    .line 1519
    move-object v6, v4

    move-object v7, v1

    :try_start_0
    invoke-interface {v6, v7}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 1523
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1524
    return-void
.end method

.method private sendQueue(Ljava/util/List;)V
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
    .line 1527
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v2, v6

    .line 1528
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_0

    .line 1529
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v4, v6

    .line 1531
    move-object v6, v4

    move-object v7, v1

    :try_start_0
    invoke-interface {v6, v7}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1532
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 1535
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1536
    return-void
.end method

.method private sendQueueTitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 1539
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v2, v6

    .line 1540
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_0

    .line 1541
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v4, v6

    .line 1543
    move-object v6, v4

    move-object v7, v1

    :try_start_0
    invoke-interface {v6, v7}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1544
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 1547
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1548
    return-void
.end method

.method private sendSessionDestroyed()V
    .locals 7

    .prologue
    .line 1478
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    move v1, v5

    .line 1479
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_0

    .line 1480
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v3, v5

    .line 1482
    move-object v5, v3

    :try_start_0
    invoke-interface {v5}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1483
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_1

    .line 1486
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1487
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1488
    return-void
.end method

.method private sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 8

    .prologue
    .line 1503
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v2, v6

    .line 1504
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_0

    .line 1505
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v4, v6

    .line 1507
    move-object v6, v4

    move-object v7, v1

    :try_start_0
    invoke-interface {v6, v7}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1508
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 1511
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1512
    return-void
.end method

.method private sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 8

    .prologue
    .line 1466
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v2, v6

    .line 1467
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    :goto_0
    move v6, v3

    if-ltz v6, :cond_0

    .line 1468
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v4, v6

    .line 1470
    move-object v6, v4

    move-object v7, v1

    :try_start_0
    invoke-interface {v6, v7}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1471
    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_1

    .line 1474
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1475
    return-void
.end method

.method private setVolumeTo(II)V
    .locals 7

    .prologue
    .line 1419
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1420
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v3, :cond_0

    .line 1421
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private update()Z
    .locals 5

    .prologue
    .line 1342
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 1343
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-eqz v2, :cond_6

    .line 1346
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 1347
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1348
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 1349
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1355
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 1369
    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 1370
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-nez v2, :cond_5

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 1371
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1372
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    .line 1373
    const/4 v2, 0x1

    move v1, v2

    .line 1405
    :cond_1
    :goto_2
    move v2, v1

    move v0, v2

    return v0

    .line 1352
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1356
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 1357
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_4

    .line 1358
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1364
    :goto_3
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    goto :goto_1

    .line 1361
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_3

    .line 1374
    :cond_5
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1379
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1380
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1381
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    goto :goto_2

    .line 1386
    :cond_6
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    if-eqz v2, :cond_7

    .line 1387
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_8

    .line 1388
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMediaButtonEventReceiver:Landroid/app/PendingIntent;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1394
    :goto_4
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsMbrRegistered:Z

    .line 1396
    :cond_7
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    if-eqz v2, :cond_1

    .line 1400
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1401
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1402
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsRccRegistered:Z

    goto/16 :goto_2

    .line 1391
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi8;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_4
.end method


# virtual methods
.method public getMediaSession()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1322
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1327
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2

    .prologue
    .line 1238
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v0, v1

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 1220
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    move v0, v1

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1230
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1231
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mDestroyed:Z

    .line 1232
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    move-result v1

    .line 1233
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendSessionDestroyed()V

    .line 1234
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1226
    return-void
.end method

.method public setActive(Z)V
    .locals 4

    .prologue
    .line 1208
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-ne v2, v3, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1211
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    .line 1212
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1213
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1214
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1216
    :cond_1
    goto :goto_0
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 10

    .prologue
    .line 1079
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    if-ne v5, v6, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1082
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_4

    .line 1085
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_2

    .line 1086
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_3

    .line 1089
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1164
    :cond_3
    :goto_1
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 1165
    goto :goto_0

    .line 1092
    :cond_4
    move-object v5, v2

    if-nez v5, :cond_5

    .line 1093
    new-instance v5, Landroid/os/Handler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v2, v5

    .line 1095
    :cond_5
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    move-object v3, v5

    .line 1151
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_6

    .line 1152
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 1154
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1157
    :cond_6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_3

    .line 1158
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 1160
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1337
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mExtras:Landroid/os/Bundle;

    .line 1338
    return-void
.end method

.method public setFlags(I)V
    .locals 7

    .prologue
    .line 1169
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1170
    move-object v4, v0

    move v5, v1

    :try_start_0
    iput v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mFlags:I

    .line 1171
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->update()Z

    move-result v4

    .line 1173
    return-void

    .line 1171
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 1306
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 9

    .prologue
    .line 1278
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 1279
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1280
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1282
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v4, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1280
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4

    .line 1286
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_4

    .line 1287
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v6, :cond_3

    const-wide/16 v6, 0x0

    :goto_2
    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    .line 1294
    :cond_1
    :goto_3
    goto :goto_0

    .line 1287
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v6}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v6

    goto :goto_2

    .line 1290
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 1291
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    if-nez v5, :cond_5

    const/4 v5, 0x0

    :goto_4
    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_4
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 12

    .prologue
    .line 1243
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v2, v5

    monitor-enter v4

    .line 1244
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1245
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1247
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mIsActive:Z

    if-nez v4, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1245
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4

    .line 1251
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_2

    .line 1252
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 1253
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    .line 1254
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    .line 1274
    :cond_1
    :goto_1
    goto :goto_0

    .line 1258
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_4

    .line 1259
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v9

    invoke-static/range {v4 .. v10}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setState(Ljava/lang/Object;IJFJ)V

    .line 1266
    :cond_3
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_5

    .line 1267
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1261
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_3

    .line 1262
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setState(Ljava/lang/Object;I)V

    goto :goto_2

    .line 1268
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_6

    .line 1269
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1270
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 1271
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRccObj:Ljava/lang/Object;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method public setPlaybackToLocal(I)V
    .locals 12

    .prologue
    .line 1177
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v3, :cond_0

    .line 1178
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1180
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1181
    new-instance v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    const/4 v7, 0x2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mAudioManager:Landroid/media/AudioManager;

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    move-object v2, v3

    .line 1185
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1186
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 11

    .prologue
    .line 1190
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "volumeProvider may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1193
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v3, :cond_1

    .line 1194
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1196
    :cond_1
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    .line 1197
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    .line 1198
    new-instance v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v7}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v8}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v9}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    move-object v2, v3

    .line 1201
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1203
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {v3, v4}, Landroid/support/v4/media/VolumeProviderCompat;->setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V

    .line 1204
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 4
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
    .line 1310
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    .line 1311
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueue(Ljava/util/List;)V

    .line 1312
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1316
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueueTitle:Ljava/lang/CharSequence;

    .line 1317
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendQueueTitle(Ljava/lang/CharSequence;)V

    .line 1318
    return-void
.end method

.method public setRatingType(I)V
    .locals 4

    .prologue
    .line 1332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mRatingType:I

    .line 1333
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 7

    .prologue
    .line 1298
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1299
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 1300
    move-object v4, v2

    monitor-exit v4

    .line 1301
    return-void

    .line 1300
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
