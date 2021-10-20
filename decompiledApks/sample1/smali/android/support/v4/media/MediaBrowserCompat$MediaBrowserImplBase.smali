.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x2

.field private static final CONNECT_STATE_CONNECTING:I = 0x1

.field private static final CONNECT_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECT_STATE_SUSPENDED:I = 0x3

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaBrowserCompat"


# instance fields
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field private mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

.field private mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field private mState:I

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 400
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    .line 401
    move-object v5, v0

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 403
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    .line 413
    move-object v5, v1

    if-nez v5, :cond_0

    .line 414
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "context must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 417
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "service component must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    :cond_1
    move-object v5, v3

    if-nez v5, :cond_2

    .line 420
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "connection callback must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 422
    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    .line 423
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    .line 424
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 425
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    .line 426
    return-void
.end method

.method static synthetic access$1002(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1202(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1302(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getNewServiceCallbacks()Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1800(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onConnectionFailed(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    move v0, v1

    return v0
.end method

.method static synthetic access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    move v0, v2

    return v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$802(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$902(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v0, v2

    return-object v0
.end method

.method private forceCloseConnection()V
    .locals 3

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eqz v1, :cond_0

    .line 521
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 523
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    .line 524
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 525
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    .line 526
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .line 527
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    .line 528
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 529
    return-void
.end method

.method private getNewServiceCallbacks()Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
    .locals 5

    .prologue
    .line 807
    move-object v0, p0

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    move-object v0, v1

    return-object v0
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 673
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    .line 675
    :pswitch_0
    const-string v1, "CONNECT_STATE_DISCONNECTED"

    move-object v0, v1

    goto :goto_0

    .line 677
    :pswitch_1
    const-string v1, "CONNECT_STATE_CONNECTING"

    move-object v0, v1

    goto :goto_0

    .line 679
    :pswitch_2
    const-string v1, "CONNECT_STATE_CONNECTED"

    move-object v0, v1

    goto :goto_0

    .line 681
    :pswitch_3
    const-string v1, "CONNECT_STATE_SUSPENDED"

    move-object v0, v1

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 796
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 797
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eqz v3, :cond_0

    .line 798
    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with mServiceConnection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 801
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 803
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private final onConnectionFailed(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 8

    .prologue
    .line 731
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 755
    return-void
.end method

.method private final onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
    .locals 12

    .prologue
    .line 759
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$7;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 790
    return-void
.end method

.method private final onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 728
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 12

    .prologue
    .line 429
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eqz v5, :cond_0

    .line 430
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect() called while not disconnected (state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 440
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    if-eqz v5, :cond_1

    .line 441
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mServiceBinder should be null. Instead it is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v5, :cond_2

    .line 445
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mServiceCallbacks should be null. Instead it is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 449
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    .line 451
    new-instance v5, Landroid/content/Intent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "android.media.browse.MediaBrowserServiceCompat"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 452
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 454
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$1;)V

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    move-object v7, v11

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    move-object v2, v5

    .line 457
    const/4 v5, 0x0

    move v3, v5

    .line 459
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .line 464
    :goto_0
    move v5, v3

    if-nez v5, :cond_3

    .line 470
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/content/ServiceConnection;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 486
    :cond_3
    return-void

    .line 460
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 461
    const-string v5, "MediaBrowserCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed binding to service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public disconnect()V
    .locals 6

    .prologue
    .line 492
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v2, :cond_0

    .line 494
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v2, v3}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    .line 507
    return-void

    .line 495
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 498
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException during connect for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method dump()V
    .locals 5

    .prologue
    .line 815
    move-object v0, p0

    const-string v1, "MediaBrowserCompat"

    const-string v2, "MediaBrowserCompat..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 816
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mServiceComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 817
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 818
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mRootHints="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 819
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 820
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mServiceConnection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 821
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mServiceBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 822
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mServiceCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 823
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mRootId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 824
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMediaSessionToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 825
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtras() called while not connected (state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 624
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "mediaId is empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 626
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_1

    .line 627
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "cb is null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 629
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 630
    const-string v5, "MediaBrowserCompat"

    const-string v6, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 631
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 667
    :goto_0
    return-void

    .line 639
    :cond_2
    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Handler;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    move-object v3, v5

    .line 657
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_1
    goto :goto_0

    .line 658
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 659
    const-string v5, "MediaBrowserCompat"

    const-string v6, "Remote error getting media item."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 660
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_1
.end method

.method public getRoot()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSessionToken() called while not connected(state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceComponent() called while not connected (state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    move-object v0, v1

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSessionToken() called while not connected(state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v0, v1

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    if-nez v6, :cond_0

    .line 572
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "parentId is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 574
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 575
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "callback is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 579
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    move-object v3, v6

    .line 580
    move-object v6, v3

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 581
    move v6, v4

    if-eqz v6, :cond_2

    .line 582
    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 583
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 585
    :cond_2
    move-object v6, v3

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 589
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 591
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v6, v7, v8}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_3
    :goto_1
    return-void

    .line 580
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 595
    const-string v6, "MediaBrowserCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "parentId is empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 607
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    move-object v2, v4

    .line 610
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_1

    .line 612
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v4, v5, v6}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 616
    const-string v4, "MediaBrowserCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
