.class public Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method
