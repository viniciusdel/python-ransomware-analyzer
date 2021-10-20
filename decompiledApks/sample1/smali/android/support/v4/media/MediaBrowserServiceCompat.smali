.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$Result;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserServiceCompat"

.field private static final TAG:Ljava/lang/String; = "MediaBrowserServiceCompat"


# instance fields
.field private mBinder:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field private final mConnections:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 80
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    .line 81
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;

    .line 522
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    return-void
.end method

.method private addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 6

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 456
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    .line 457
    return-void
.end method

.method private isValidPackage(Ljava/lang/String;I)Z
    .locals 9

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    .line 435
    const/4 v7, 0x0

    move v0, v7

    .line 445
    :goto_0
    return v0

    .line 437
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v3, v7

    .line 438
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 439
    move-object v7, v4

    array-length v7, v7

    move v5, v7

    .line 440
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 441
    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 442
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 440
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 445
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method private performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 11

    .prologue
    .line 465
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    move-object v3, v4

    .line 491
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 493
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 494
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_0
    return-void
.end method

.method private performLoadItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 10

    .prologue
    .line 500
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/media/MediaBrowserServiceCompat$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    move-object v3, v4

    .line 510
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 512
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 516
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v0, v1

    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 415
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 428
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    const-string v2, "android.media.browse.MediaBrowserServiceCompat"

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    move-object v0, v2

    .line 297
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Service;->onCreate()V

    .line 289
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mBinder:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    .line 290
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 8

    .prologue
    .line 373
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Session token may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 377
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "The session token has already been set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 380
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 395
    return-void
.end method
