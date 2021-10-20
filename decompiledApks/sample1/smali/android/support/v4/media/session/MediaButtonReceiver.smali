.class public Landroid/support/v4/media/session/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_0

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_1
    move-object v4, v1

    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    move-object v2, v4

    .line 124
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v4

    move-object v3, v4

    .line 125
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 126
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v8, Landroid/content/Intent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 78
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 79
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object v4, v8

    .line 80
    move-object v8, v4

    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 81
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 82
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected 1 Service that handles android.intent.action.MEDIA_BUTTON, found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 85
    :cond_0
    move-object v8, v5

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    move-object v6, v8

    .line 86
    new-instance v8, Landroid/content/ComponentName;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object v11, v6

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 88
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 89
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    .line 90
    return-void
.end method
