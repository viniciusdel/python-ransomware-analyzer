.class Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRecord"
.end annotation


# instance fields
.field callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field pkg:Ljava/lang/String;

.field root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

.field rootHints:Landroid/os/Bundle;

.field subscriptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method
