.class Landroid/support/v4/media/session/MediaSessionCompatApi23;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;,
        Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    move-object v0, v1

    return-object v0
.end method
