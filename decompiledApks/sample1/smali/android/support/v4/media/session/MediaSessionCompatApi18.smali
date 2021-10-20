.class Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SEEK_TO:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi18"

.field private static sIsMbrPendingIntentSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    move-object v0, v1

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 7

    .prologue
    .line 100
    move-wide v0, p0

    move-wide v3, v0

    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v3

    move v2, v3

    .line 102
    move-wide v3, v0

    const-wide/16 v5, 0x100

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 103
    move v3, v2

    const/16 v4, 0x100

    or-int/lit16 v3, v3, 0x100

    move v2, v3

    .line 105
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    move-object v3, v5

    .line 46
    sget-boolean v5, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v5, :cond_0

    .line 48
    move-object v5, v3

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    sget-boolean v5, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-nez v5, :cond_1

    .line 57
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 59
    :cond_1
    return-void

    .line 49
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 50
    const-string v5, "MediaSessionCompatApi18"

    const-string v6, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 52
    const/4 v5, 0x0

    sput-boolean v5, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    goto :goto_0
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/media/RemoteControlClient;

    move-object v3, v1

    check-cast v3, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 97
    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .locals 16

    .prologue
    .line 73
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-wide v7, v11

    .line 74
    move v11, v1

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    move-wide v11, v2

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    .line 75
    const-wide/16 v11, 0x0

    move-wide v9, v11

    .line 76
    move-wide v11, v5

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 77
    move-wide v11, v7

    move-wide v13, v5

    sub-long/2addr v11, v13

    move-wide v9, v11

    .line 78
    move v11, v4

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    move v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    .line 79
    move-wide v11, v9

    long-to-float v11, v11

    move v12, v4

    mul-float/2addr v11, v12

    float-to-long v11, v11

    move-wide v9, v11

    .line 82
    :cond_0
    move-wide v11, v2

    move-wide v13, v9

    add-long/2addr v11, v13

    move-wide v2, v11

    .line 84
    :cond_1
    move v11, v1

    invoke-static {v11}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result v11

    move v1, v11

    .line 85
    move-object v11, v0

    check-cast v11, Landroid/media/RemoteControlClient;

    move v12, v1

    move-wide v13, v2

    move v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 86
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    check-cast v3, Landroid/media/RemoteControlClient;

    move-wide v4, v1

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 91
    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    move-object v3, v4

    .line 64
    sget-boolean v4, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v4, :cond_0

    .line 65
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
