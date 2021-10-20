.class final Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation


# instance fields
.field public final command:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final stub:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 6

    .prologue
    .line 1765
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1766
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    .line 1767
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    .line 1768
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    .line 1769
    return-void
.end method
