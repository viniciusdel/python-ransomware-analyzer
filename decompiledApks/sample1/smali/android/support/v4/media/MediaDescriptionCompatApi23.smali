.class Landroid/support/v4/media/MediaDescriptionCompatApi23;
.super Landroid/support/v4/media/MediaDescriptionCompatApi21;
.source "MediaDescriptionCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompatApi23$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompatApi21;-><init>()V

    .line 29
    return-void
.end method

.method public static getMediaUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/MediaDescription;

    invoke-virtual {v1}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
