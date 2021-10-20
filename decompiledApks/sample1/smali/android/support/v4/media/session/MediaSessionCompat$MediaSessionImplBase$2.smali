.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 5

    .prologue
    .line 1095
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 8

    .prologue
    .line 1148
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1149
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .prologue
    .line 1143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    .line 1144
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 1138
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    .line 1134
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 1128
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 1129
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    .line 1123
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    .line 1124
    return-void
.end method

.method public onSeekTo(J)V
    .locals 6

    .prologue
    .line 1118
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 1119
    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    .line 1114
    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .prologue
    .line 1108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 1109
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .prologue
    .line 1103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 1104
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1098
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->val$callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    .line 1099
    return-void
.end method
