.class Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"


# instance fields
.field mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAudioFocused:Z

.field final mAudioManager:Landroid/media/AudioManager;

.field final mContext:Landroid/content/Context;

.field mFocused:Z

.field final mGetPlaybackPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field final mIntent:Landroid/content/Intent;

.field final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mPlayState:I

.field final mPlaybackPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field final mReceiverAction:Ljava/lang/String;

.field final mReceiverFilter:Landroid/content/IntentFilter;

.field mRemoteControl:Landroid/media/RemoteControlClient;

.field final mTargetView:Landroid/view/View;

.field final mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;

.field final mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field final mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/TransportMediatorCallback;)V
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 50
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 58
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 76
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2$5;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$5;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mGetPlaybackPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 83
    move-object v5, v0

    new-instance v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlaybackPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 93
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 98
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    .line 99
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    .line 101
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;

    .line 102
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":transport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverAction:Ljava/lang/String;

    .line 103
    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverAction:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    .line 104
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 105
    move-object v5, v0

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    .line 106
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 108
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->windowDetached()V

    .line 117
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 118
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 119
    return-void
.end method

.method dropAudioFocus()V
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    if-eqz v1, :cond_0

    .line 185
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    .line 186
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 188
    :cond_0
    return-void
.end method

.method gainFocus()V
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-nez v1, :cond_0

    .line 132
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    .line 133
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 134
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 135
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 136
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->takeAudioFocus()V

    .line 139
    :cond_0
    return-void
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    move-object v0, v1

    return-object v0
.end method

.method loseFocus()V
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->dropAudioFocus()V

    .line 192
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-eqz v1, :cond_0

    .line 193
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    .line 194
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 195
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 197
    :cond_0
    return-void
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 169
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 170
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 172
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->dropAudioFocus()V

    .line 173
    return-void
.end method

.method public refreshState(ZJI)V
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    if-eqz v5, :cond_0

    .line 161
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    move v6, v1

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    :goto_0
    move-wide v7, v2

    move v9, v1

    if-eqz v9, :cond_2

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 163
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 165
    :cond_0
    return-void

    .line 161
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public startPlaying()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 151
    move-object v1, v0

    const/4 v2, 0x3

    iput v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 152
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 154
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-eqz v1, :cond_1

    .line 155
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->takeAudioFocus()V

    .line 157
    :cond_1
    return-void
.end method

.method public stopPlaying()V
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 177
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 180
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->dropAudioFocus()V

    .line 181
    return-void
.end method

.method takeAudioFocus()V
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    if-nez v1, :cond_0

    .line 143
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    .line 144
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 147
    :cond_0
    return-void
.end method

.method windowAttached()V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 123
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    .line 125
    move-object v1, v0

    new-instance v2, Landroid/media/RemoteControlClient;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v3, v4}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    .line 126
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mGetPlaybackPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 127
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlaybackPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 128
    return-void
.end method

.method windowDetached()V
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->loseFocus()V

    .line 201
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 204
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    .line 205
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    .line 207
    :cond_0
    return-void
.end method
